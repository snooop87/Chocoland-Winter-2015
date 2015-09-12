private["_y","_k","_x"];
_y= player getvariable["highscore",[0,0,0,0,0,0,0,0]];_y set [3,(_y select 3)+1];
player setvariable["highscore",_y,false];
_k = _this select 0;
if(!isnil"_k")then{
_x= (player getvariable["cmoney",0]);
[_k]call chocokingMoney;
player setVariable ["cmoney", _k + _x, true];
chocoland globalchat format["+%1$ for the Mission", _k];[]call countingbounty;};