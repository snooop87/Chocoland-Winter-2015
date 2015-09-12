_objPos = _this select 0;
_Objtype = objectList call BIS_fnc_selectRandom;
_obj = _Objtype createVehicle _objPos;
_obj setpos [(getpos _obj select 0) + 50,(getpos _obj select 1)+ 50,0];
_obj setVariable["R3F_LOG_disabled", false, true];  