
//	@file Version: 1.1
//	@file Name: loadRespawnDialog.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, Redshirt_Ensign
//	@file Created: 05/04/2013 02:00
//	@file Args:

#define respawn_Content_Text 3401
#define respawn_MissionUptime_Text 3402
#define respawn_Town_Button0 3403
#define respawn_Town_Button1 3404
#define respawn_Town_Button2 3405
#define respawn_Town_Button3 3406
#define respawn_Town_Button4 3407
#define respawn_PlayersInTown_Text0 3408
#define respawn_PlayersInTown_Text1 3409
#define respawn_PlayersInTown_Text2 3410
#define respawn_PlayersInTown_Text3 3411
#define respawn_PlayersInTown_Text4 3412
#define respawn_BlockedSpawns_Text 3413

waitUntil{!isnil "bis_fnc_init"};
disableSerialization;

private["_pos", "_rad", "_name", "_enemyCount", "_friendlyCount", "_friendlyTowns", "_side", "_dynamicControlsArray", "_dynamicControlsIndex", "_groupArray", "_text", "_players", "_playerArray"];

createDialog "RespawnSelectionDialog";
_display = uiNamespace getVariable "RespawnSelectionDialog";
_display displayAddEventHandler ["KeyDown", "_return = false; if(respawnDialogActive && (_this select 1) == 1) then {_return = true;}; _return"];
_respawnText = _display displayCtrl respawn_Content_Text;
_missionUptimeText = _display displayCtrl respawn_MissionUptime_Text;
_blockedSpawns_Text = _display displayCtrl respawn_BlockedSpawns_Text;
respawnDialogActive = true;

_dynamicControlsArray = [
    [respawn_Town_Button0,respawn_PlayersInTown_Text0],
    [respawn_Town_Button1,respawn_PlayersInTown_Text1],
    [respawn_Town_Button2,respawn_PlayersInTown_Text2],
    [respawn_Town_Button3,respawn_PlayersInTown_Text3],
    [respawn_Town_Button4,respawn_PlayersInTown_Text4]];

{
    _button = _display displayCtrl (_x select 0);
    _button ctrlSetText format[""];
    _button ctrlShow false;
}foreach _dynamicControlsArray;

_groupArray = [];
_friendlyTowns = [];
_blockedSpawnsArray = [];
showBeacons = false;

while {respawnDialogActive} do
{ 
    _timeText = [time/60/60] call BIS_fnc_timeToString;
    _missionUptimeText ctrlSetText format["Mission Uptime: %1", _timeText];
    _blockedSpawns_Text ctrlSetText format["%1", _blockedSpawnsArray];
    _blockedSpawnsArray = [];

    sleep 0.5;
};