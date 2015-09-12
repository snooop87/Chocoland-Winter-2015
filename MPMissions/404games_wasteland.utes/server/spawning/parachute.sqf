
_spawn = _this select 0;

	 _Parachute = "ParachuteBigWest_EP1" createVehicle position _spawn;
         
		_Parachute setPos (getPos _spawn);
                _Parachute setvelocity [1,1,0];
		_spawn attachTo [_Parachute,[0,0,-1.5]];

		waitUntil {(getPos _spawn select 2) < 2 || !alive _spawn || !alive _Parachute};
		deTach _spawn;
		sleep 1;
		deleteVehicle _Parachute;
                 _spawn setDamage (0.00);
 
_spawn setPos [(getPos _spawn select 0),(getPos _spawn select 1),0.0014];
