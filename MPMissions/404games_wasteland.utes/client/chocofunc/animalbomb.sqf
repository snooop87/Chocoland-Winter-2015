_randompos = getposatl player;
_bomb = "R_80mm_HE" createVehicle [_randomPos select 0,_randomPos select 1, _randomPos select 2];
player setdamage 1;