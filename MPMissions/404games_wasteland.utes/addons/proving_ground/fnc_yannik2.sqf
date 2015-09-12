

hint "yanniks  Mv22 + flares";
_pos = getpos player;
_Parachute = "MV22" createVehicle _pos;
_Parachute setPos _pos;_pos= [(_pos select 0)+30,(_pos select 1), (_pos select 2)];

sleep 1;
_Parachute addWeapon "Gau12";_Parachute addMagazine "300Rnd_25mm_GAU12";
_Parachute addWeapon "Bomblauncher";_Parachute addMagazine "6Rnd_GBu12_AV8B";
_Parachute addWeapon "CMFlareLauncher";_Parachute addMagazine "120Rnd_CMFlare_Chaff_Magazine";
player moveindriver _Parachute;  player assignAsDriver _Parachute;