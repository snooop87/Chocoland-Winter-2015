_pos =getposasl player;
_base = ["outpostVIP", 0,_pos] execVM "server\functions\createOutpost.sqf";
player removeAction playerbaseObject; 