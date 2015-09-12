//	@file Version: 1.0
//	@file Name: mission_AirWreck.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 15:19
//	@file Args:

#include "sideMissionDefines.sqf";

if(!isServer) exitwith {};

private ["_result","_missionMarkerName","_missionType","_startTime","_returnData","_randomPos","_randomIndex","_vehicleClass","_box","_box2","_vehicle","_picture","_vehicleName","_hint","_currTime","_playerPresent","_unitsAlive"];

//Mission Initialization.
_result = 0;
_missionMarkerName = "AirWreck_Marker";
_missionType = "Aircraft Wreck";
_nerfBoxes = ["basicUS","basicUS2","basicRU","basicRU2","basicGER","basicPMC","basicSpecial","basicSpecial2","basicSpecial3"];



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

//Vehicle Class, Posistion, Fuel, Ammo, Damage
_vehicle = ["C130J_US_EP1",[(_randomPos select 0) + 50, (_randomPos select 1) + 50,0],0,0,1,"NONE"] call createMissionVehicle;

_box = createVehicle ["USLaunchersBox",[(_randomPos select 0), (_randomPos select 1),0],[], 0, "NONE"];
[_box,"mission_Side_USLaunchers"] call fn_refillbox;

_box2 = _nerfBoxes select (random (count _nerfBoxes - 1));
_safePos = [_randomPos, 2, 10, 1, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
[_box2, _safePos] execVM "server\spawning\boxCreation.sqf";   

_picture = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "displayName");

_reward = floor (random 5000)+1000;
CivGrpS = createGroup civilian;
[CivGrpS,_randomPos] spawn createSmallGroup;

diag_log format["WASTELAND SERVER - Side Mission Waiting to be Finished: %1",_missionType];



_startTime = floor(time);

waitUntil
{
    sleep 1; 
	_playerPresent = false;
	
	
	
    _currTime = floor(time);
	if ((damage _vehicle) == 1)then {_result =1};
    if(_currTime - _startTime >= sideMissionTimeout) then {_result = 1;};
    {if((isPlayer _x) AND (_x distance _box <= missionRadiusTrigger)) then {_playerPresent = true};}forEach playableUnits;
    _unitsAlive = ({alive _x} count units CivGrpS);
    chocoland setvariable["m",[_missionType,_picture,360 - (_currTime- _startTime),_unitsAlive,_reward],true];
    (_result == 1) OR ((_playerPresent) AND (_unitsAlive < 1)) OR ((damage _box) == 1)
};

if(_result == 1) then
{
	//Mission Failed.
    deleteVehicle _box;
    //deleteVehicle _box2;
    deleteVehicle _vehicle;
    {deleteVehicle _x;}forEach units CivGrps;
    deleteGroup CivGrpS;
    chocoland setvariable["m",["Mission Failed",_picture,360 - (_currTime- _startTime),0,_reward],true];
    diag_log format["WASTELAND SERVER - Side Mission Failed: %1",_missionType];
} else {
	//Mission Complete.
    deleteVehicle _vehicle;
    deleteGroup CivGrpS;
     chocoland setvariable["m",["Mission Complete",_picture,360 - (_currTime- _startTime),0,_reward],true];
  _array =[];{if((isPlayer _x) AND (_x distance _vehicle <= 250)) then {
      
        _array set [count _array,leader _x];};}forEach playableUnits;
    chocostring= format["if(leader player in %1)then{[%2] call MissionReward;};",_array,_reward];
publicvariable"chocostring";
    diag_log format["WASTELAND SERVER - Side Mission Success: %1",_missionType];
};

//Reset Mission Spot.
MissionSpawnMarkers select _randomIndex set[1, false];
[_missionMarkerName] call deleteClientMarker;