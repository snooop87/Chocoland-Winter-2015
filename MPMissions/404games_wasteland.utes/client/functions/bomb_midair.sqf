


_pos = getpos player;
player removeaction bombId;
newUnit removeaction bombId;
newUnit setdamage 1;
_obj="Bomb" createVehicle _pos;
_obj setpos _pos;
_Anade="M_Ch29_AT" createVehicle _pos;
sleep 0.5;
deletevehicle _obj;