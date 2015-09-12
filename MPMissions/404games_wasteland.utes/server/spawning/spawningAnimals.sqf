
if(!X_Server) exitWith {};

_private=["_pos1"];
_pos1=_this;
_pos =[_pos1 select 0,_pos1 select 1,0];

//coroutine
_marray3=["Cow04","Rabbit","Goat"];
_animalClass = _marray3 call BIS_fnc_selectRandom;

_grp = creategroup civilian;
_spawn = _grp createunit [_animalClass,_pos,[],0,"FORM"];

//_spawn=_animalClass createUnit [_pos,EmptyGroup,"",1.0];
_spawn setPos _pos;
_spawn addEventHandler ["Killed", {_this execVM "server\functions\bomb_midair.sqf";}];
processInitCommands;
_spawn disableAI "TARGET";
_spawn disableAI "AUTOTARGET";
_spawn disableAI "MOVE";
_spawn disableAI "ANIM";
/*_Parachute = "ParachuteBigWest_EP1" createVehicle position _spawn;
_Parachute setPos (getPos _spawn);
_spawn attachTo [_Parachute,[0,0,-1.5]];
waitUntil {sleep 1;_Parachute setVelocity [(velocity _Parachute select 0)*0, (velocity _Parachute select 1)*0, (velocity _Parachute select 2)*1.2];(getPos _spawn select 2) < 2 || !alive _spawn || !alive _Parachute};
deTach _spawn;
deleteVehicle _Parachute;*/
