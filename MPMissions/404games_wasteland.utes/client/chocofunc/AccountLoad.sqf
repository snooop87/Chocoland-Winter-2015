chocoDBload= puid;
publicvariableServer"chocoDBload";
waitUntil {!isnil{chocoland getvariable puid}};
_array = chocoland getvariable puid;
reload player;player removeWeapon "ItemRadio";player removeWeapon "ItemGPS";removeAllWeapons player;removeBackpack player;
        _Health = _array select 1;
	_weapons = _array select 2;
        _Position = _array select 3;
     	_cmoney = _array select 4;
	_bounty = _array select 5;
       	_donator = _array select 6;
	_highscore = _array select 7;
	_chocoload = _array select 8;
	_home = _array select 9;
	_saveVehicle = _array select 10;
	_chocopack = _array select 11;
	player setDamage _Health;
	player setVariable["cmoney",_cmoney,true];
	player setVariable["bounty",_bounty,true];
	player setVariable["donator",_donator,false];
       	player setVariable["highscore",_highscore,false];
	player setVariable["chocoload",_chocoload,false];
	player setVariable["home",_home,false];
	player setVariable["saveVehicle",_saveVehicle,false];
	player setVariable["chocopack",_chocopack,false];
       	removeAllWeapons player;
	{player addWeapon _x;} count _Weapons;
        _z=(primaryWeapon player);
        if(!isnil"_z")then{
	player selectWeapon (primaryWeapon player);
        _magazines = getArray(configFile >> "cfgWeapons" >> (primaryWeapon player) >> "magazines");
_magazines = _magazines select 0;player addmagazine _magazines;};
	player setPosatl _Position; 
	player setDir 0;
        {player addweapon _x } foreach ["ItemMap","ItemCompass","ItemWatch"];
       [] execVM "client\chocofunc\Accountsaveloop.sqf";
chocoland globalChat format["Database: Hello, %1 Profile Loaded",name player];loadgearable = false;
chocoland setvariable [puid,nil,true];
if(!isnil{player getvariable"home"})then {home =true;};