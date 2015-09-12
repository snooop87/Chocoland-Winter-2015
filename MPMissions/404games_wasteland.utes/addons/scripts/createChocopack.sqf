//create weapon from backpack
_primary = primaryWeapon player;
_backpack = player getvariable"chocopack";
    if (_primary == "") then {

   player addweapon _backpack;
    player selectWeapon _backpack;
    {player addMagazine _x} forEach magsbackpack;
    player setvariable["chocopack","",false];
    
    }else{                    
// wenn waffe schon im inventar vorhanden ist
_oldweapon = primaryWeapon player;
 _magtypes = getArray(configFile>> "cfgWeapons" >> _primary >> "magazines");
		{_magtypes set [_forEachIndex, toUpper _x]} forEach _magtypes;
		_magazines = magazines player;
		_oldmagsbackpack = [];
                {_tou = toUpper _x;if (_tou in _magtypes) then {_oldmagsbackpack set [count _oldmagsbackpack, _tou]}} forEach _magazines;
		_muzzles = getArray(configFile>> "cfgWeapons" >> _primary >> "muzzles");
		if (count _muzzles == 2) then {
			_magtypes = getArray(configFile>> "cfgWeapons" >> _primary >> (_muzzles select 1) >> "magazines");
			{_tou = toUpper _x;if (_tou in _magtypes) then {_oldmagsbackpack set [count _oldmagsbackpack, _tou]}} forEach _magazines;
		};
                
    { player removeMagazine _x} forEach _oldmagsbackpack;
    player removeWeapon _oldweapon;
    sleep 1;

   player addweapon _backpack;
    player selectWeapon _backpack;
    {player addMagazine _x} forEach magsbackpack;
    player setvariable["chocopack",_oldweapon,false];
    magsbackpack = _oldmagsbackpack;
   };
