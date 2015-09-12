
#include "dialog\attachDefines.sqf";
disableSerialization;
object1 = cursortarget;
_dialog = findDisplay attach_DIALOG;
_player = _dialog displayCtrl menu_texturecount;
_player = lbCurSel menu_texturecount;
if(_player < 0)then {_player = 0};
_RED=floor (COLORRED);
_GREEN= floor (COLORGREEN);
_BLUE = floor(COLORBLUE) ;
_alpha = floor (COLORALPHA);
_RED=_RED / 10;
_GREEN= _GREEN / 10;
_BLUE = _BLUE / 10;
_alpha =_alpha / 10 ;

call compile format["object1 setObjectTexture [%5, ""#(rgb,8,8,3)color(%1,%2,%3,%4)""];
CONFIGchocostring = ""object1 setobjecttexture [%5, """"#(rgb,8,8,3)color(%1,%2,%3,%4)""""];"";
",_RED,_GREEN,_BLUE,_alpha,_player];
