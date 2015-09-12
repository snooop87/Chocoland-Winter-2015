if(!X_Server) exitWith {};
_randomObject = randomBuildingrray call BIS_fnc_selectRandom; 
_private=["_pos1"];
_pos1=_this;
_pos =[_pos1 select 0,_pos1 select 1,0];
_spawn = _randomObject createVehicle _pos;
_spawn setpos _pos;
clearMagazineCargoGlobal _spawn;
clearWeaponCargoGlobal _spawn;
_spawn setVariable["R3F_LOG_disabled", false, true];
/*              
	 _Parachute = "ParachuteBigWest_EP1" createVehicle position _spawn;
       
		_Parachute setPos (getPos _spawn);
                _Parachute setvelocity [0,10,0];
		_spawn attachTo [_Parachute,[0,0,-1.5]];

		waitUntil {sleep 1;_Parachute setVelocity [(velocity _Parachute select 0)*0, (velocity _Parachute select 1)*0, (velocity _Parachute select 2)*1.2];(getPos _spawn select 2) < 2 || !alive _spawn || !alive _Parachute};
		deTach _spawn;
		sleep 1;
		deleteVehicle _Parachute;
                 _spawn setDamage (0.00);
 _spawn setPos [(getPos _spawn select 0),(getPos _spawn select 1),0.0014];
*/