
player removeaction playerbaseObject;
_pos= getpos player;_center = createCenter sideLogic;  _group = createGroup _center; 
LHD = _group createUnit ["LOGIC",[_pos select 0,_pos select 1, -0.9] , [], 0, ""];
LHD call BIS_EW_fnc_createLHD;
