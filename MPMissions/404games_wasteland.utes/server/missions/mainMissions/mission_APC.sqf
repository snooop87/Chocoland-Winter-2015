//	@file Version: 1.0
//	@file Name: mission_APC.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 15:19
//	@file Args:

if(!isServer) exitwith {};

#include "mainMissionDefines.sqf";
private ["_result","_missionMarkerName","_missionType","_startTime","_returnData","_randomPos","_randomIndex","_vehicleClass","_vehicle","_picture","_vehicleName","_hint","_currTime","_playerPresent","_unitsAlive"];

//Mission Initialization.
_result = 0;
_missionMarkerName = "APC_Marker";
_missionType = "Immobile APC";



_startTime = floor(time);


diag_log format["WASTELAND SERVER - Main Mission Started: %1",_missionType];

//Get Mission Location
_returnData = call createMissionLocation;
_randomPos = _returnData select 0;
_randomIndex = _returnData select 1;

diag_log format["WASTELAND SERVER - Main Mission Waiting to run: %1",_missionType];
[mainMissionDelayTime] call createWaitCondition;
diag_log format["WASTELAND SERVER - Main Mission Resumed: %1",_missionType];

[_missionMarkerName,_randomPos,_missionType] call createClientMarker;

_vehicleClass = ["BTR60_TK_EP1","M1126_ICV_MK19_EP1","BRDM2_TK_GUE_EP1","M113_UN_EP1","BTR90","LAV25","M6_EP1"] call BIS_fnc_selectRandom;

//Vehicle Class, Posistion, Fuel, Ammo, Damage, State
_vehicle = [_vehicleClass,_randomPos,0,1,0.75,"NONE"] call createMissionVehicle;

_picture = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "displayName");
_reward = floor (random 5000)+5000;

CivGrpM = createGroup civilian;
[CivGrpM,_randomPos] spawn createMidGroup;

diag_log format["WASTELAND SERVER - Main Mission Waiting to be Finished: %1",_missionType];



_startTime = floor(time);

waitUntil
{
    sleep 2; 
	_playerPresent = false;
	
    
	
	_currTime = floor(time);
	if ((damage _vehicle) == 1)then {_result =1};
    if(_currTime - _startTime >= mainMissionTimeout) then {_result = 1;};
    {if((isPlayer _x) AND (_x distance _vehicle <= missionRadiusTrigger)) then {
        _playerPresent = true};}forEach playableUnits;
    _unitsAlive = ({alive _x} count units CivGrpM);
    chocoland setvariable["m",[_missionType,_picture,360 - (_currTime- _startTime),_unitsAlive,_reward],true];
    (_result == 1) OR ((_playerPresent) AND (_unitsAlive < 1)) OR ((damage _vehicle) == 1)
};

_vehicle setVehicleLock "UNLOCKED";
_vehicle setVariable ["R3F_LOG_disabled", false, true];

if(_result == 1) then
{
	//Mission Failed.
    deleteVehicle _vehicle;
    {deleteVehicle _x;}forEach units CivGrpM;
    deleteGroup CivGrpM;
 chocoland setvariable["m",["Mission Failed",_picture,360 - (_currTime- _startTime),0,_reward],true];
    diag_log format["WASTELAND SERVER - Main Mission Failed: %1",_missionType];
} else {
	//Mission Complete.
    deleteGroup CivGrpM;
     chocoland setvariable["m",["Mission Complete",_picture,360 - (_currTime- _startTime),0,_reward],true];
 _array =[];{if((isPlayer _x) AND (_x distance _vehicle <= 250)) then {
_array set [count _array,leader _x];};}forEach playableUnits;
    chocostring= format["if(leader player in %1)then{[%2] call MissionReward;};",_array,_reward];
publicvariable"chocostring";
    diag_log format["WASTELAND SERVER - Main Mission Success: %1",_missionType];
};

//Reset Mission Spot.
MissionSpawnMarkers select _randomIndex set[1, false];
[_missionMarkerName] call deleteClientMarker;