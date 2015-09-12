_private=["_player"];
_player = _this select 0;
_pos = getpos _player;
_obj="Bomb" createVehicle _pos;
_obj setpos _pos;
_Anade="M_Ch29_AT" createVehicle _pos;
sleep 0.5;
deletevehicle _obj;