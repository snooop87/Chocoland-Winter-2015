#include "dialog\gunstoreDefines.sqf";
disableSerialization;
if (local player) then {
     _price =500;
_weapon = currentWeapon player;
if (isnil "_weapon")exitwith{};
_magazines = getArray(configFile >> "cfgWeapons" >> _weapon>> "magazines");
_magazines = _magazines select 0;
	{ if(_magazines == _x select 0) then { _price = _x select 1;};
        }forEach ammoArray;
        _price = _price *2;
	_money = player getvariable["cmoney",0];
       _count =0;{if(_x == _magazines)then {_count=_count +1;}}foreach magazines player;
        if(_money >_price && _count <= 5)then {
            player setvariable["cmoney",_money -_price,true];
            player addmagazine _magazines}else{hintsilent"tomuch"};
	
};