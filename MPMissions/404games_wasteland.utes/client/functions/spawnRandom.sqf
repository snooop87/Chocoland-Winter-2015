
//  @file Version: 1.0
//  @file Name: spawnRandom.sqf
//  @file Author: [404] Deadbeat, [404] Costlyy
//  @file Created: 28/11/2012 05:19
//  @file Args:
waituntil {!isnil "bis_fnc_init"};
private ["_townName","_randomLoc","_pos"];

_randomLoc = cityList select (random (count cityList - 1));

_xpos= getmarkerpos"Mission";
_pos=[_xpos, 200, 5000, 5, 0, 10, 0] call BIS_fnc_findSafePos;
player setPos _pos;

respawnDialogActive = false;
closeDialog 0;

_mins = floor(60 * (daytime - floor(daytime)));
_townName = _randomLoc select 2;
[
    "ChocoLand","RandomSpawn",format ["%1:%3%2", floor(daytime), _mins, if(_mins < 10) then {"0"} else {""}]
] spawn BIS_fnc_infoText;
