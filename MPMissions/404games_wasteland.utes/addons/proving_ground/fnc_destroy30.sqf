private [_trig,_randompos];
_trig = _this select 0;
_randomPos = getpos player;
switch (_trig)do {
    case 1 : {_randomPos = getpos player;hintsilent " 30 Meters delete";
_baseToDelete = nearestObjects [_randomPos, ["All"], 22];
{ deleteVehicle _x; } forEach _baseToDelete;
};
 case 2 : {_randomPos = getpos player;hintsilent " 100 Meters delete";
_baseToDelete = nearestObjects [_randomPos, ["All"], 100];
{ deleteVehicle _x; } forEach _baseToDelete;
};
};