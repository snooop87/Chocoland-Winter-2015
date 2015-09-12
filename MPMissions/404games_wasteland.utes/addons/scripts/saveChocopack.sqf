_primary = primaryWeapon player;
_backpack = player getvariable["chocopack","0"]; 
_vehicle = player; 
    if (_primary != "" and (_backpack == "0")) then {
//magazin
    _magtypes = getArray(configFile>> "cfgWeapons" >> _primary >> "magazines");
{_magtypes set [_forEachIndex, toUpper _x]} forEach _magtypes;
_magazines = magazines player;
magsbackpack = [];
{_tou = toUpper _x;if (_tou in _magtypes) then {magsbackpack set [count magsbackpack, _tou]}} forEach _magazines;
_muzzles = getArray(configFile>> "cfgWeapons" >> _primary >> "muzzles");
if (count _muzzles == 2) then {
_magtypes = getArray(configFile>> "cfgWeapons" >> _primary >> (_muzzles select 1) >> "magazines");
{_tou = toUpper _x;if (_tou in _magtypes) then {magsbackpack set [count magsbackpack, _tou]}} forEach _magazines;
};
player setvariable["chocopack",_primary,false];
    //ende
    {player removeMagazine _x} forEach magsbackpack;
    player removeWeapon _primary;
  
}else{

_oldmags = magsbackpack;
_oldweapon = player getvariable"chocopack";
_magtypes = getArray(configFile>> "cfgWeapons" >> _primary >> "magazines");
{_magtypes set [_forEachIndex, toUpper _x]} forEach _magtypes;
_magazines = magazines player;
magsbackpack = [];
{_tou = toUpper _x;if (_tou in _magtypes) then {magsbackpack set [count magsbackpack, _tou]}} forEach _magazines;
_muzzles = getArray(configFile>> "cfgWeapons" >> _primary >> "muzzles");
if (count _muzzles == 2) then {
    _magtypes = getArray(configFile>> "cfgWeapons" >> _primary >> (_muzzles select 1) >> "magazines");
{_tou = toUpper _x;if (_tou in _magtypes) then {magsbackpack set [count magsbackpack, _tou]}} forEach _magazines;
	};
   player setvariable["chocopack",_primary,false];
   {
    player removeMagazine _x} forEach magsbackpack;
    player removeWeapon _primary;
    sleep 1;
    player addweapon _oldweapon;
    player selectWeapon _oldweapon;
    {player addMagazine _x;} forEach _oldmags;
  
    };