//	@file Version: 1.0
//	@file Name: mission_WepCache.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 15:19
//	@file Args:

#include "sideMissionDefines.sqf";

if(!isServer) exitwith {};

private ["_result","_missionMarkerName","_missionType","_startTime","_returnData","_randomPos","_randomIndex","_vehicleClass","_box","_box2","_picture","_vehicleName","_hint","_currTime","_playerPresent","_unitsAlive"];

//Mission Initialization.
_result = 0;
_missionMarkerName = "WeaponCache_Marker";
_missionType = "Weapon Cache";



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

_box = createVehicle ["RULaunchersBox",[(_randomPos select 0), (_randomPos select 1),0],[], 0, "NONE"];
[_box,"mission_Side_USLaunchers"] call fn_refillbox;

_box2 = createVehicle ["RUSpecialWeaponsBox",[(_randomPos select 0), (_randomPos select 1) - 10,0],[], 0, "NONE"];
[_box2,"mission_Side_USSpecial"] call fn_refillbox;

_reward = floor (random 5000)+1000;
CivGrpS = createGroup civilian;
[CivGrpS,_randomPos] spawn createSmallGroup;

diag_log format["WASTELAND SERVER - Side Mission Waiting to be Finished: %1",_missionType];



_startTime = floor(time);// 50

waitUntil
{
    sleep 1; 
	_playerPresent = false;
	
	
	
    _currTime = floor(time);// 100
	if ((damage _box) == 1)then {_result =1};
        if ((damage _box2) == 1)then {_result =1};
    if(_currTime - _startTime >= sideMissionTimeout) then {_result = 1;};
    {if((isPlayer _x) AND (_x distance _box <= missionRadiusTrigger)) then {_playerPresent = true};}forEach playableUnits;
    _unitsAlive = ({alive _x} count units CivGrpS);
  chocoland setvariable["m",[_missionType,"",360 - (_currTime- _startTime),_unitsAlive,_reward],true];
    (_result == 1) OR ((_playerPresent) AND (_unitsAlive < 1)) OR ((damage _box) == 1)
};

if(_result == 1) then
{
	//Mission Failed.
    deleteVehicle _box;
    deleteVehicle _box2;
    {deleteVehicle _x;}forEach units CivGrps;
    deleteGroup CivGrpS;
    chocoland setvariable["m",["Mission Failed","",360 - (_currTime- _startTime),0,_reward],true];
    diag_log format["WASTELAND SERVER - Side Mission Failed: %1",_missionType];
} else {
	//Mission Complete.
    chocoland setvariable["m",["Mission Complete","",360 - (_currTime- _startTime),_unitsAlive,_reward],true];
    deleteGroup CivGrpS;
 _array =[];{if((isPlayer _x) AND (_x distance _vehicle <= 250)) then {
_array set [count _array,leader _x];};}forEach playableUnits;
    chocostring= format["if(leader player in %1)then{[%2] call MissionReward;};",_array,_reward];
publicvariable"chocostring";
    diag_log format["WASTELAND SERVER - Side Mission Success: %1",_missionType];
};

//Reset Mission Spot.
MissionSpawnMarkers select _randomIndex set[1, false];
[_missionMarkerName] call deleteClientMarker;