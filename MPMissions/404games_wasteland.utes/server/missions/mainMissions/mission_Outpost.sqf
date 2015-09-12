//	@file Version: 1.0
//	@file Name: mission_Outpost.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 03:25
//	@file Args:

#include "mainMissionDefines.sqf";

if(!isServer) exitwith {};
private ["_result","_missionMarkerName","_missionType","_startTime","_returnData","_randomPos","_randomIndex","_vehicleClass","_base","_veh","_picture","_vehicleName","_hint","_currTime","_playerPresent","_unitsAlive"];

//Mission Initialization.
_result = 0;
_missionMarkerName = "Outpost_Marker";
_missionType = "Capture Outpost";



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

_veh = ["outpostUS1","smallbase1"] call BIS_fnc_selectRandom;
_base = [_veh, 0, _randomPos] execVM "server\functions\createOutpost.sqf";

_vehicleName = "Enemy Outpost";

_reward = floor (random 10000)+10000;
CivGrpL = createGroup civilian;
[CivGrpL,_randomPos] spawn createLargeGroup;

diag_log format["WASTELAND SERVER - Main Mission Waiting to be Finished: %1",_missionType];



_startTime = floor(time);

waitUntil
{
    sleep 1; 
	_playerPresent = false;
	
	
	
    _currTime = floor(time);
	
    if(_currTime - _startTime >= mainMissionTimeout) then {_result = 1;};
    _unitsAlive = ({alive _x} count units CivGrpL);
    chocoland setvariable["m",[_missionType,"",360 - (_currTime- _startTime),_unitsAlive,_reward],true];
    (_result == 1) OR (_unitsAlive < 1)
};

if(_result == 1) then
{
	
    
    sleep 20;
    
	//Mission Failed. Firstly obliterate the site.
    _bomb = "Bo_GBU12_LGB" createVehicle [(_randomPos select 0),(_randomPos select 1), 50]; 
    sleep 1;
    _bomb = "Bo_GBU12_LGB" createVehicle [(_randomPos select 0) + 5,(_randomPos select 1) - 5, 50];
    sleep 1;
    _bomb = "Bo_GBU12_LGB" createVehicle [(_randomPos select 0),(_randomPos select 1) + 10, 50];
    
    sleep 10;
    
    _baseToDelete = nearestObjects [_randomPos, ["All"], 22];
    { deleteVehicle _x; } forEach _baseToDelete;
    
    {deleteVehicle _x;}forEach units CivGrpL;
    deleteGroup CivGrpL;
    
    diag_log format["WASTELAND SERVER - Main Mission Failed: %1",_missionType];
} else {
	//Mission Complete.
    deleteGroup CivGrpL;
     chocoland setvariable["m",["Mission Complete","",360 - (_currTime- _startTime),0,_reward],true];
    diag_log format["WASTELAND SERVER - Main Mission Success: %1",_missionType];
 _array =[];{if((isPlayer _x) AND (_x distance _vehicle <= 250)) then {
_array set [count _array,leader _x];};}forEach playableUnits;
    chocostring= format["if(leader player in %1)then{[%2] call MissionReward;};",_array,_reward];
publicvariable"chocostring";
};

//Reset Mission Spot.
MissionSpawnMarkers select _randomIndex set[1, false];
[_missionMarkerName] call deleteClientMarker;