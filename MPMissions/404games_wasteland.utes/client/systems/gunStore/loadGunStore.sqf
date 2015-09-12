

#include "dialog\gunstoreDefines.sqf";


disableSerialization;

_gunshopDialog = createDialog "gunshopd";

gunStoreCart = 0;

_dialog = findDisplay gunshop_DIALOG;

_playerMoney = _dialog displayCtrl gunshop_money;

_money = player getVariable "cmoney";


_playerMoney CtrlsetText format["Cash: $%1", _money];
loadout=[];
