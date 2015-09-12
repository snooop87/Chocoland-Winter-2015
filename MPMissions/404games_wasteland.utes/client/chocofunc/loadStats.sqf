
_test= _this select 0;
_player = _this select 1;
_player setDammage statsDMG;
_player setVariable["bounty",statsbounty,true];
_player setVariable["donator",statsdonator,false];
_player setVariable["basebuilder",statsbasebuilder,false];
_player setVariable["upgrades",statsupgrades,false];
_player setVariable["attach",statsattach,false];
_player setVariable["decoder",statsdecoder,false];
_player setVariable["cmoney",statschoco,true];
_player setVariable["canfood",statscanfood,false];
_player setVariable["chocopack",statschocopack,false];
_player setvariable["highscore",statshigh,false];
_player setVariable["saveVehicle",statssaveVehicle,false];
_player setVariable["medkits",statsmedkits,false];
_player setVariable["water",statswater,false];
_player setVariable["fuel",statsfuel,false];
_player setVariable["repairkits",statsrepairkits,false];
_player setVariable["fuelFull", statsfuelFull,false];
_player setVariable["fuelEmpty",statsfuelEmpty,false];
_player setVariable["bombs",statsbombs,false];
_player setVariable["spawnBeacon",statsspawnBeacon,false];
_player setVariable["camonet",statscamonet,false];
_player setVariable["canDrop",statscanDrop,false];
_player addEventHandler ["Respawn", {[_this] call onRespawn;}];
_player addEventHandler ["Killed", {[_this] call onKilled;}];

[] execVM "client\clientEvents\onMouseWheel.sqf";
[] execVM "client\functions\playerActions.sqf";

//Setup Key Handler
waituntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];


"clientMissionMarkers" addPublicVariableEventHandler {[] call updateMissionsMarkers};
"clientRadarMarkers" addPublicVariableEventHandler {[] call updateRadarMarkers};
"pvar_teamKillList" addPublicVariableEventHandler {[] call updateTeamKiller};
"publicVar_teamkillMessage" addPublicVariableEventHandler {if(local(_this select 1)) then {[] spawn teamkillMessage;};};

if(_test == 1)exitwith{};
{
		_player addMagazine _x;
}foreach statsmag;
	removeAllWeapons player;
	{
		_player addWeapon _x;
                _player selectWeapon _x;
	}foreach statsweapon;