
_loadout = player getvariable"chocoload";
_price = 0;
xx=0;

{xx= _x;
        { if(xx == _x select 1 and xx != "") then { _price =_price+(  _x select 2);}; }forEach weaponsArray;
	{ if(xx == _x select 0 and xx != "") then { _price = _price+(_x select 1); }; }forEach ammoArray;
	{ if(xx == _x select 0 and xx != "") then { _price =_price+ (_x select 1); }; }forEach accessoriesArray;

 }foreach _loadout;

 geld =_price;
 _money = player getvariable["cmoney",0];

 //geld ende
 if(_money < geld)exitwith{hint"you dont have enough money"};
 player setvariable["cmoney",_money - geld,true]; if(geld >50000) then{ []call savePlayer;};

dropweapon = "WeaponHolder" createVehicle getPos player; 
dropweapon setPos [getPos player select 0,getPos player select 1,getPos player select 2];
 fnc_load_weapon = {
	_weapon = _this select 0;
	_weaponCfg = (configFile >> "cfgWeapons" >> _weapon);
	_type = getNumber(_weaponCfg >> "type");
	if (_type in [1,2,4,5]) then {
		{_cWepType = [getNumber(configFile >> "cfgWeapons" >> _x >> "type")];
		if (_cWepType select 0 in [1,5]) then {_cWepType = [1,5];};
		if (_type in _cWepType) then {
                       player removeWeapon _x;
                       dropweapon addWeaponCargo [_x,1];
 			_current_magazines = magazines player;
			_compatible_magazines = getArray(configFile >> "cfgWeapons" >> _x >> "magazines");
			{if (_x in _compatible_magazines) then {
				player removeMagazine _x;
                                dropweapon addMagazineCargo [_x,1];
			};} forEach _current_magazines;
		};} forEach (weapons player);};
	player addWeapon _weapon;
	player selectWeapon _weapon;};
{
    _weaponCfg = (configFile >> "cfgWeapons" >> _x);
_type = getNumber(_weaponCfg >> "type");
if (_type in [1,2,4,5]) then {
    [_x]spawn fnc_load_weapon;}
    else{player addMagazine _x;
    };
          }foreach _loadout;
 //item ende
chocoland globalChat format["Loadout successfully buyed for %1$.",geld];