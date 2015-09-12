//	@file Version: 1.0
//	@file Name: mission_Truck.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 15:19
//	@file Args:

#include "sideMissionDefines.sqf";

if(!isServer) exitwith {};

private ["_result","_missionMarkerName","_missionType","_startTime","_returnData","_randomPos","_randomIndex","_vehicleClass","_vehicle","_picture","_vehicleName","_hint","_currTime","_playerPresent"];

//Mission Initialization.
_result = 0;
_missionMarkerName = "Truck_Marker";
_missionType = "Abandoned Truck";



_startTime = floor(time);


diag_log format["WASTELAND SERVER - Side Mission Started: %1",_missionType];

//Get Mission Location
_returnData = call createMissionLocation;
_randomPos = _returnData select 0;
_randomIndex = _returnData select 1;

diag_log format["WASTELAND SERVER - Side Mission Waiting to run: %1",_missionType];
[sideMissionDelayTime] call createWaitCondition;
diag_log format["WASTELAND SERVER - Side Mission Resumed: %1",_missionType];

[_missionMarkerName,_randomPos,_missionType] call createClientMarker;
_reward = floor (random 5000)+1000;
_vehicleClass = ["MtvrRefuel","MtvrReammo","MtvrRepair"] call BIS_fnc_selectRandom;

//Vehicle Class, Posistion, Fuel, Ammo, Damage
_vehicle = [_vehicleClass,_randomPos,1,1,0,"NONE"] call createMissionVehicle;

_picture = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "displayName");


diag_log format["WASTELAND SERVER - Side Mission Waiting to be Finished: %1",_missionType];



_startTime = floor(time);

waitUntil
{
    sleep 1; 
	_playerPresent = false;
	
	
	
    _currTime = floor(time);
	if ((damage _vehicle) == 1)then {_result =1};
    if(_currTime - _startTime >= sideMissionTimeout) then {_result = 1;};
    {if((isPlayer _x) AND (_x distance _vehicle <= missionRadiusTrigger)) then {_playerPresent = true};}forEach playableUnits;
    chocoland setvariable["m",[_missionType,_picture,360 - (_currTime- _startTime),0,_reward],true];
    (_result == 1) OR (_playerPresent) OR ((damage _vehicle) == 1)
};

_vehicle setVehicleLock "UNLOCKED";
_vehicle setVariable ["R3F_LOG_disabled", false, true];

if(_result == 1) then
{
	//Mission Failed.
    deleteVehicle _vehicle;
chocoland setvariable["m",["Mission Failed",_picture,360 - (_currTime- _startTime),0,_reward],true];
    diag_log format["WASTELAND SERVER - Side Mission Failed: %1",_missionType];
    
} else {
	//Mission Complete.
    chocoland setvariable["m",["Mission Complete",_picture,360 - (_currTime- _startTime),0,_reward],true];
    diag_log format["WASTELAND SERVER - Side Mission Success: %1",_missionType];
 _array =[];{if((isPlayer _x) AND (_x distance _vehicle <= 250)) then {
_array set [count _array,leader _x];};}forEach playableUnits;
    chocostring= format["if(leader player in %1)then{[%2] call MissionReward;};",_array,_reward];
publicvariable"chocostring";
};

//Reset Mission Spot.
MissionSpawnMarkers select _randomIndex set[1, false];
[_missionMarkerName] call deleteClientMarker;