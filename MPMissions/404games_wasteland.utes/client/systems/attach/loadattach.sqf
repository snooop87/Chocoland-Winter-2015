_a= ["Land_Misc_ConcPipeline_EP1","Misc_concrete_High","Concrete_Wall_EP1","RampConcrete","Land_ConcreteRamp","Land_ConcreteBlock"];
if(isplayer cursortarget)exitwith{chocoland globalchat" you cannot Change This Object"};
if(!(cursortarget getVariable["R3F_LOG_disabled", nil]) && !(typeof cursortarget in _a))then {
#include "dialog\attachDefines.sqf";
disableSerialization;
_chopshopDialog = createDialog "attachd";
funStoreCart = 0;
COLORRED=0;
COLORRED=0;
COLORRED=0;
COLORRED=0;
_Dialog = findDisplay attach_DIALOG;
_playerMoney = _Dialog displayCtrl attach_money;
_mvalue = _Dialog displayCtrl menu_texturecount;
_Index = _mvalue lbadd "#1 VehicleTexture"; _mvalue lbSetData [(lbSize _mvalue)-1, "0"];
_Index = _mvalue lbadd "#2 VehicleTexture"; _mvalue lbSetData [(lbSize _mvalue)-1, "1"];
_Index = _mvalue lbadd "#3 VehicleTexture"; _mvalue lbSetData [(lbSize _mvalue)-1, "2"];
_Index = _mvalue lbadd "#4 VehicleTexture"; _mvalue lbSetData [(lbSize _mvalue)-1, "3"];
_Index = _mvalue lbadd "#5 VehicleTexture"; _mvalue lbSetData [(lbSize _mvalue)-1, "4"];
_mvalue lbSetCurSel 0;
_money = player getVariable "cmoney";
_playerMoney CtrlsetText format[""];

chocoland globalChat" you can change the color of you selected Vehicle, if you want to change the color for all players you need to Buy it!";
on= false;
objectMoveup=0;
objectMovelaenge=0;
dir = 0;
objectMovebreite=0;
if(detachCounter > 0)exitwith{detachCounter = 0;};
detachCounter =0;
while{detachCounter <=60 && !on}do {
 detachCounter = detachCounter +1;
 sleep 1;
 if(detachCounter >= 60)then{detach object1;detach object2;};
};
}else{chocoland globalchat" you cannot Change This Object"};