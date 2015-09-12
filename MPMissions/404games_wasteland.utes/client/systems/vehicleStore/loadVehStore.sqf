

#include "dialog\vehstoreDefines.sqf";
disableSerialization;

_vehshopDialog = createDialog "vehshopd";
vehStoreCart = 0;

_Dialog = findDisplay vehshop_DIALOG;
_playerMoney = _Dialog displayCtrl vehshop_money;
_money = player getVariable "cmoney";
_playerMoney CtrlsetText format[""];