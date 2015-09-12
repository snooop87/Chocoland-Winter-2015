_rvehicle= weaponsArray select (random (count weaponsArray - 1));
_rvehicle = _rvehicle select 2;
hint " Random weapon";

 _dir = getdir player;
   _pos = getPos player;
     _pos = [(_pos select 0)+20*sin(_dir),(_pos select 1)+20*cos(_dir),50];
     _spawn = "WeaponHolder" createVehicle _pos; 
     _spawn addWeaponCargo [_rvehicle,2];
   //  _spawn = _rvehicle createVehicle _pos;
                        _spawn setpos _pos;
			_spawn setDir _dir;
                        _spawn allowdamage false;
			
			_spawn setVariable["R3F_LOG_disabled", false, true];           
              _Parachute = "ParachuteBigWest_EP1" createVehicle position _spawn;
		_Parachute setPos (getPos _spawn);
                _Parachute setVelocity [0, 3, 1];
                _random = Round (random 5);
                _spawn attachTo [_Parachute,[0,0,-1.5]];
		 if (_random == 5) then {
		_smoke = "smokeShellblue" createVehicle position _spawn;
		_smoke setPos (getPos _spawn);
		_smoke attachTo [_Parachute,[0,0,-1.5]];
                };
                waitUntil {(getPos _spawn select 2) < 2};
                _spawn setPos [(getPos _spawn select 0),(getPos _spawn select 1),0.0014];

		deTach _spawn;
		sleep 15;
		deleteVehicle _Parachute;
                 _spawn setDamage (0.00);
                 _spawn allowdamage true;