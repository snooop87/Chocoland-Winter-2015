private ["_range","_rvehicle"];
_rvehicle =0;
_randomObject = randomVehicleArray  call BIS_fnc_selectRandom;
_rvehicle = _randomObject select 2;
 _dir = getdir player;
   _pos = getPos player;
     _pos = [(_pos select 0)+5*sin(_dir),(_pos select 1)+5*cos(_dir),100];
_spawn = createVehicle [_rvehicle,_pos,[], 0,"CAN_COLLIDE"];
_spawn setDir _dir;
 _spawn allowdamage false;
clearMagazineCargoGlobal _spawn;
clearWeaponCargoGlobal _spawn;

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
chocoland globalChat"use W,A,S,D to controll your Parachute, you can Rotate with mousewheel";
paraId = player addAction[('<t color=''#FF33CC''>' + ('Rotate Vehicle 90�') +  '</t>'),'client\functions\on.sqf'];
while {(getPos _spawn select 2) > 2 and  (alive _Parachute)and (alive _spawn)}do
{_Parachute setVelocity [(velocity player select 0)*3, (velocity player select 1)*3, (velocity _Parachute select 2)*1.07];
if(on)then {_spawn setdir ((getDir _spawn) + 90);
rotate9 = [rotate9, _spawn];
publicVariable "rotate9";on = false;};
 sleep 0.1;
};
player removeaction paraId;
on = false;
		deTach _spawn;
		sleep 15;
		deleteVehicle _Parachute;
                 _spawn setDamage (0.00);
                 _spawn allowdamage true;