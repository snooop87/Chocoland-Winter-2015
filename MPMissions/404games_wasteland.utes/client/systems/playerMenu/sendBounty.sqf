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
if((player getVariable ["cmoney",0] < _money) OR (player getVariable ["cmoney",0] < 0)) exitwith {hint format["You don't have $%1 to give Bounty", _money];};
mutexScriptInProgress = true;
player setVariable["cmoney",(player getVariable "cmoney") - _money,true];
[]call savePlayer;
mutexScriptInProgress = false;
_y =[_money] call fnc_number;
chocoland setVariable["killbounty",(chocoland getVariable "killbounty") + _money,true];
chocostring= format["taskhint [""Total Bounty : %1$ "",[0,1,0,1],""taskdone""];",[(chocoland getVariable "killbounty")] call fnc_number;];
publicvariable"chocostring";
call compile chocostring;

