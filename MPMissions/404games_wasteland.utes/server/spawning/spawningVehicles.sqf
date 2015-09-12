if(!X_Server) exitWith {};

_randomObject = randomVehicleArray  call BIS_fnc_selectRandom; 
_private=["_pos1"];
_pos1=_this;
_pos =[_pos1 select 0,_pos1 select 1,0];
_spawn = createVehicle[_randomObject,_pos,[], 0,"CAN_COLLIDE"];
_spawn setVariable["R3F_LOG_disabled", false, true];
_spawn setDir 70;
clearMagazineCargoGlobal _spawn;
clearWeaponCargoGlobal _spawn;
 _spawn setFuel (0.50);
  _spawn setDamage (random 0.50);
  _spawn setVehicleAmmo (random 0.90);
 [_spawn] call randomWeapons;
_spawn setVariable["R3F_LOG_disabled", false, true];