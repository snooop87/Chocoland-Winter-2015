
 diag_log format ["############################ DBSAVE #####################"];
 _str= "db =["; diag_log(_str);{diag_log(_x);diag_log("CC"); }foreach DB;_str= "];"; diag_log(_str);
 _str= "ob =[";
 diag_log(_str);
 {
if (_x getVariable ["objectLocked", false] && {alive _x}) then {
	_db = [typeOf _x,getPosAtL _x,[vectorDir _x] + [vectorUp _x],_x getvariable["playerGUID", ""]];
 diag_log(_db);diag_log("CC");};
} count allMissionObjects "All";
_str= "];";
 diag_log(_str);
 diag_log format ["############################ DBEnD #####################"];
 