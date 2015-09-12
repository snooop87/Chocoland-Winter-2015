
private["_player","_corpse","_town","_spawn","_temp"];
playerSetupComplete = false;

_player = (_this select 0) select 0;
_corpse = (_this select 0) select 1;
_corpse removeAction playerMenuId;
_corpse removeAction playerWeaponId;
_corpse removeAction saveVehId;
_corpse removeAction bombId;
_corpse removeAction playerflyId;
_corpse removeaction playerflyoff;
_corpse removeaction playersatId;
{_corpse removeMagazine _x}foreach magazines _corpse;
{    _corpse removeAction _x;} forEach aActionsIDs;
if(player getvariable"donator" == 1)then
{deletevehicle _corpse;};
if(player getvariable"decoder" == 1)then
{_corpse removeaction decoderId;};
player call playerSetup;
waitUntil {playerSetupComplete};
call chocokingcal;
[] execVM "client\clientEvents\onMouseWheel.sqf";

true spawn playerSpawn;

[] spawn {
    waitUntil{respawnDialogActive};
    waitUntil{sleep 0.1; !respawnDialogActive};

    if(!isNull pvar_PlayerTeamKiller) then {
        pDialogTeamkiller = pvar_PlayerTeamKiller;
        pvar_PlayerTeamKiller = objNull;

    };
};
