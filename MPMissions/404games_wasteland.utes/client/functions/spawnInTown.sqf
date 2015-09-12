
//	@file Version: 1.0
//	@file Name: spawnInTown.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args: [int(which button)]

#define respawn_Town_Button0 3403
#define respawn_Town_Button1 3404
#define respawn_Town_Button2 3405
#define respawn_Town_Button3 3406
#define respawn_Town_Button4 3407
disableSerialization;

private ["_townNameSelected","_townName"];

_switch = _this select 0;

_display = uiNamespace getVariable "RespawnSelectionDialog";
_buttonZero = _display displayCtrl respawn_Town_Button0;
_buttonOne = _display displayCtrl respawn_Town_Button1;
_buttonTwo = _display displayCtrl respawn_Town_Button2;
_buttonThree = _display displayCtrl respawn_Town_Button3;
_buttonFour = _display displayCtrl respawn_Town_Button4;

switch(_switch) do 
{
    case 0:
    {
        {
			_name = name _x;
			if(_x in units group player) then
			{
                                 _townName = _name;
				_pos = getPos _x ;
				_pos = [_pos select 0, _pos select 1, (_pos select 2) + 500];				
				player setPos _pos;
				respawnDialogActive = false;
				closeDialog 0;
			};
		}forEach allUnits;
                
                 2 cutText ["HALO jump activated. Open your chute before you hit the ground! over 150 ALT", "PLAIN DOWN", 5];
        player setPos [_pos select 0, _pos select 1, (_pos select 2) + 500]; // Stop the player appearing on the ground for a split second before the HALO 
        [player, 500] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";    
        respawnDialogActive = false;
		closeDialog 0;
    };
    case 1:
    {
        {
		_name = name _x;
			if(_x in units group player) then
			{
                                 _townName = _name;
				_pos = getPos _x ;
				_pos = [_pos select 0, _pos select 1, (_pos select 2) + 500];				
				player setPos _pos;
				respawnDialogActive = false;
				closeDialog 0;
			};
		}forEach allUnits;
                
                 2 cutText ["HALO jump activated. Open your chute before you hit the ground!over 150 ALT", "PLAIN DOWN", 5];
        player setPos [_pos select 0, _pos select 1, (_pos select 2) + 500]; // Stop the player appearing on the ground for a split second before the HALO 
        [player, 500] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";    
        respawnDialogActive = false;
		closeDialog 0;
    };
    case 2:
    {
        {
		_name = name _x;
			if(_x in units group player) then
			{
                                 _townName = _name;
				_pos = getPos _x ;
				_pos = [_pos select 0, _pos select 1, (_pos select 2) + 500];				
				player setPos _pos;
				respawnDialogActive = false;
				closeDialog 0;
			};
		}forEach allUnits;
                 2 cutText ["HALO jump activated. Open your chute before you hit the ground!", "PLAIN DOWN", 5];
        player setPos [_pos select 0, _pos select 1, (_pos select 2) + 500]; // Stop the player appearing on the ground for a split second before the HALO 
        [player, 500] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";    
        respawnDialogActive = false;
		closeDialog 0;
    };
    case 3:
    {
        {
		_name = name _x;
			if(_x in units group player) then
			{
                                 _townName = _name;
				_pos = getPos _x ;
				_pos = [_pos select 0, _pos select 1, (_pos select 2) + 500];				
				player setPos _pos;
				respawnDialogActive = false;
				closeDialog 0;
			};
		}forEach allUnits;
                 2 cutText ["HALO jump activated. Open your chute before you hit the ground!", "PLAIN DOWN", 5];
        player setPos [_pos select 0, _pos select 1, (_pos select 2) + 500]; // Stop the player appearing on the ground for a split second before the HALO 
        [player, 500] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";    
        respawnDialogActive = false;
		closeDialog 0;
    };
    case 4:
    {
        {
		_name = name _x;
			if(_x in units group player) then
			{
                                 _townName = _name;
				_pos = getPos _x ;
				_pos = [_pos select 0, _pos select 1, (_pos select 2) + 500];				
				player setPos _pos;
				respawnDialogActive = false;
				closeDialog 0;
			};
		}forEach allUnits;
                 2 cutText ["HALO jump activated. Open your chute before you hit the ground!", "PLAIN DOWN", 5];
        player setPos [_pos select 0, _pos select 1, (_pos select 2) + 500]; // Stop the player appearing on the ground for a split second before the HALO 
        [player, 500] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";    
        respawnDialogActive = false;
		closeDialog 0;
    };
};
sleep 5;
_mins = floor(60 * (daytime - floor(daytime)));
[
	"404 Wasteland",_townName,format ["%1:%3%2", floor(daytime), _mins, if(_mins < 10) then {"0"} else {""}]
] spawn BIS_fnc_infoText;