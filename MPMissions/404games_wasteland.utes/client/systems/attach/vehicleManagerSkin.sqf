
#include "dialog\attachDefines.sqf";
disableSerialization;
_dialog = findDisplay attach_DIALOG;
_player = _dialog displayCtrl menu_texturecount;
_player = lbCurSel menu_texturecount;
if(_player < 0)then {_player = 0};
_skin = _this select 0;
object1 = cursortarget; 
if((player getvariable"cmoney")< 500)exitwith{hint" oh you have no money"};
player setvariable["cmoney",(player getvariable"cmoney")-500,true];
if(_skin == 1)then {
    object1 setObjectTexture [_player, "client\images\snowy.jpg"];
CONFIGchocostring =format["object1 setObjectTexture [%1, ""client\images\snowy.jpg""];",_player]; 


};
if (_skin ==2 )then{object1 setObjectTexture [_player, "client\images\millitary.jpg"];
CONFIGchocostring =format["object1 setObjectTexture [%1, ""client\images\millitary.jpg""];",_player]; 

};
if (_skin ==3 )then{object1 setObjectTexture [_player, "client\images\rainbow.jpg"];
CONFIGchocostring =format["object1 setObjectTexture [%1, ""client\images\rainbow.jpg""];",_player]; 

};
if (_skin ==4 )then{object1 setObjectTexture [_player, "client\images\leopard.jpg"];
CONFIGchocostring =format["object1 setObjectTexture [%1, ""client\images\leopard.jpg""];",_player]; 

};