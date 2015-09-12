private ["_obj", "_count","_id"];
_id = _this select 0;_count = 0;
{
    if(((_x select 3) select 0) == _id)then{
    _obj = createVehicle [(_x select 0),(_x select 1), [], 0, "CAN COLLIDE"];
    _obj setVectorDirAndUp (_x select 2);
    _obj setPosatl (_x select 1);
    _obj setVariable ["objectLocked", true, true];
    _obj setVariable ["playerGUID", (_x select 3), true];
    clearWeaponCargoGlobal _obj;
    clearMagazineCargoGlobal _obj;
    _count = _count + 1; 
    OB = OB - [_x]};
} foreach OB;
diag_log format["Loaded %1 parts from playerUID %2", _count,_id];
