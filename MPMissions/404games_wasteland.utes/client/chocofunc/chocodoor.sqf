
_doorobject = cursortarget;
_price = 500 * (count playableunits);
if (_price > (player getvariable"cmoney"))exitwith{chocoland globalchat"you dont have enough money"};

_doorobject setVariable ["playerGUID", [puid,name player], true];
_doorobject setVariable ["objectLocked", true, true];
player setvariable["cmoney",(player getvariable["cmoney",0])-_price,true];
chocodoor =1;
hint format[" you set your ChocoDoor for %1$ (scaled OnlinePlayer), press O-Button to open it ",_price];
_doorobject allowDamage false;

doorobject = _doorobject;

