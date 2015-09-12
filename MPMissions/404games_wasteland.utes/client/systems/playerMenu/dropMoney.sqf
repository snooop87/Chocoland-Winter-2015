#include "dialog\player_sys.sqf";
disableSerialization;

_dialog = findDisplay playersys_DIALOG;
_player = _dialog displayCtrl player_value;
_money = _dialog displayCtrl money_value;
// Check if mutex lock is active.
if(mutexScriptInProgress) exitWith {
	chocoland globalChat "YOU ARE ALREADY PERFORMING ANOTHER ACTION!";
};
_player =  lbCurSel _player;
_money =  lbCurSel _money;

_money = lbData [money_value, _money];
_player = lbData [player_value, _player];
_money = call compile (_money);
if((player getVariable ["cmoney",0] < _money) OR (player getVariable ["cmoney",0] < 0)) exitwith {hint format["You don't have $%1 to send", _money];};
mutexScriptInProgress = true;
player setVariable["cmoney",(player getVariable "cmoney") - _money,true];
 if(_money >50000) then{ []call savePlayer;};
chocoland globalChat format ["transfering %2$ to %1 ",_player,_money];
sleep 1 ; 
chocoland globalChat".";
sleep 1 ; 
chocoland globalChat"..";
sleep 1 ; 
{if(_player == name _x)then {_x setVariable["cmoney",(_x getvariable["cmoney",0])+_money,true];chocostring= format["if(name player == %3)then {chocoland globalchat""%1 gaves you %2$"" };", name player,_money,name _x];publicvariable"chocostring";};}foreach playableunits;
chocoland globalChat"...transfered";
mutexScriptInProgress = false;