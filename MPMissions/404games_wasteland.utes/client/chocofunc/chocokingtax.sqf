//change tax define this 
_tax =_this select 0;
if((chocoking select 0) == name player)then{
_tax= floor (10 * _tax);chocoking = [name player,_tax];publicVariable"chocoking";
hintsilent format ["%2 changed the Tax to %1%4; and all Prices set to %3%4",_tax,name player,100 - _tax,"%"];
    }else{
hintsilent format ["you dont have permission to set TAX, %1 is the CHOCOKING with %2%3 Tax",chocoking select 0,chocoking select 1,"%"];
};