if(!X_Server) exitWith {};
private ["_car","_mags","_rnd","_weapon","_mag"];
_car = _this select 0;
_weapon = randomweaponarray select (random (count randomweaponarray - 1));
_mag = (getArray (configFile >> "Cfgweapons" >> _weapon >> "magazines")) select 0;
_car addMagazineCargoglobal [_mag,1];
_car addWeaponCargoglobal [_weapon,1];