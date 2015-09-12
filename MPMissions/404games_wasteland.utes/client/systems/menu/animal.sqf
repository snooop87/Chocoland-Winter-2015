

#include "dialog\menuDefines.sqf";
//disableSerialization;
//classSelect = 0;
_chopshopDialog = createDialog "confirmpd";
_Dialog = findDisplay confirm_DIALOG;
waitUntil { sleep 1;confirm>0};
if(confirm == 2)exitwith{};
execvm"client\systems\generalStore\adds\beanimal.sqf";