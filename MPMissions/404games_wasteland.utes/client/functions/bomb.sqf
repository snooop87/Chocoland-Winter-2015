


confirm = 0;
_chopshopDialog = createDialog "confirmpd";
_Dialog = findDisplay confirm_DIALOG;
waitUntil { sleep 1;confirm> 0};
if(confirm== 2)exitwith{};
if(player getvariable["cmoney",0] >= 2500) then {
_pos = getposATL player;
_bomb = "Bo_GBU12_LGB" createVehicle _pos;
_bomb setPosATL _pos;
_bomb attachTo [player,[0,0,-0.4]];
 player setVariable["cmoney", (player getVariable "cmoney")- 2500,true];

 BOMB = true;
player removeAction bombId;
} else{hint "you dont have enough money";};