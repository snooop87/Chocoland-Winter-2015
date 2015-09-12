player setVariable["cmoney",55555,true];
_test = format ["new player : %1",name player];
[nil,nil,rHINT,_test] call RE;
[] execVM "client\systems\generalStore\adds\fnc_rweapon.sqf";
[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";
