#include "dialog\player_sys.sqf"; 
if(isnil {player getVariable "cmoney"}) then {player setVariable["cmoney",0,true];};
if(dialog) exitwith{};
disableSerialization;

private["_Dialog","_foodtext","_watertext","_moneytext","_mvalue","_rogue","_index","_pvalue"];

_playerDialog = createDialog "playerSettings";

_Dialog = findDisplay playersys_DIALOG;
_foodtext = _Dialog displayCtrl food_text;
//_watertext = _Dialog displayCtrl water_text;
//_moneytext = _Dialog displayCtrl money_text;
_mvalue = _Dialog displayCtrl money_value;_pvalue = "";
_pvalue = _Dialog displayCtrl player_value;
_rogue = _Dialog displayCtrl rogue_text;
_uptime = _Dialog displayCtrl uptime_text;
_groupButton = _Dialog displayCtrl groupButton;
_saveVehicle = _Dialog displayCtrl saveVehicleText_text;
_saveVehicle2 = _Dialog displayCtrl saveVehicleText2_text;
_Index =0;
_Index = _mvalue lbadd "$1000"; _mvalue lbSetData [(lbSize _mvalue)-1, "1000"];
_Index = _mvalue lbadd "$2500"; _mvalue lbSetData [(lbSize _mvalue)-1, "2500"];
_Index = _mvalue lbadd "$5000"; _mvalue lbSetData [(lbSize _mvalue)-1, "5000"];
_Index = _mvalue lbadd "$10000"; _mvalue lbSetData [(lbSize _mvalue)-1, "10000"];
_Index = _mvalue lbadd "$25000"; _mvalue lbSetData [(lbSize _mvalue)-1, "25000"];
_Index = _mvalue lbadd "$50000"; _mvalue lbSetData [(lbSize _mvalue)-1, "50000"];
_Index = _mvalue lbadd "$100000"; _mvalue lbSetData [(lbSize _mvalue)-1, "100000"];
_Index = _mvalue lbadd "$250000"; _mvalue lbSetData [(lbSize _mvalue)-1, "250000"];
_Index = _mvalue lbadd "$500000"; _mvalue lbSetData [(lbSize _mvalue)-1, "500000"];
_Index = _mvalue lbadd "$1000000"; _mvalue lbSetData [(lbSize _mvalue)-1, "1000000"];
_mvalue lbSetCurSel 0;
{
    call compile format["_Index = _pvalue lbadd ""%1"";_pvalue lbSetData [(lbSize _pvalue)-1, ""%1""];", name _x];
}foreach playableunits;
_pvalue lbSetCurSel 0;   
//highscore
_score=player getVariable ["highscore",[0,0,0,0,0,0,0,0]];
_highscore1 = _Dialog displayCtrl highscore1;_price=[_score select 0]select 0;_highscore1 ctrlSetText format["Total Kills: %1", _price];
_highscore2 = _Dialog displayCtrl highscore2;_highscore2 ctrlSetText format["Winning streak: %1", _score select 1];
_highscore3 = _Dialog displayCtrl highscore3;_highscore3 ctrlSetText format["Deaths: %1", _score select 2];
_highscore4 = _Dialog displayCtrl highscore4;_highscore4 ctrlSetText format["Cleared Missions: %1", _score select 3];
_highscore5 = _Dialog displayCtrl highscore5; _price1=_score select 4;_highscore5 ctrlSetText format["Money Payed: %1",_price1];
_highscore6 = _Dialog displayCtrl highscore6; _price2=_score select 5;_highscore6 ctrlSetText format["Money Earned: %1", _price2];
_highscore7 = _Dialog displayCtrl highscore7; _price3=[_score select 6]select 0 ;_highscore7 ctrlSetText format["Time played: %1", _price3];
_highscore8 = _Dialog displayCtrl highscore8; _price4=[_score select 7]select 0 ;_highscore8 ctrlSetText format["Total Walked: %1", _price4];
//end highscore

_vehicle = player getvariable["saveVehicle",""];
_vehicle2 = player getvariable["chocopack",""];
_saveVehicle ctrlSetText format["Hangar: %1", _vehicle];
_saveVehicle2 ctrlSetText format["Backpack: %1", _vehicle2];
/*
if(str(playerSide) == "west" || str(playerSide) == "east") then
{
    _groupButton ctrlShow false;    
};*/