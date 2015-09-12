_money = _this select 0;
_y=(chocoking select 2);
if(!isnil"_y")then{
_y setvariable ["cmoney",(_y getvariable"cmoney")+_money,true];};
hint format ["%1",cursortarget]

