

_baseToDelete = nearestObjects [getpos player, ["All"], 100];      {  _x setdamage 0; } forEach _baseToDelete; 

hint "$all repaired";