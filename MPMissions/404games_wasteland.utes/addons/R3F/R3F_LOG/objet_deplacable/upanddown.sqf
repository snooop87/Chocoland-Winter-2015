private ["_object", "_upordown", "_newheight", "_playerheight", "_ppos", "_atth", "_volume", "_atthfix"];
//_upordown = _this select 3;
_upordown = _this select 0;


if (R3F_LOG_mutex_local_verrou) then {
	chocoland globalChat STR_R3F_LOG_mutex_action_en_cours;
} else {
	_object = R3F_LOG_joueur_deplace_objet;
	_pos = getPosATL _object;
	_newheight = _pos select 2;
	_ppos = getPosATL player;
	_playerheight = _ppos select 2;
	_objbound = boundingBox _object;
	_objmax = _objbound select 1;
	_volume = ((_objmax select 0) * (_objmax select 1) * (_objmax select 2));
	_attcoord = _object worldToModel _ppos;
	
	switch (_upordown) do {
	case 1:
		{atthfix = atthfix+0.2;_object attachTo [player, [ 0, (((boundingBox _object select 1 select 1) max (-(boundingBox _object select 0 select 1))) max ((boundingBox _object select 1 select 0) max (-(boundingBox _object select 0 select 0)))) + 1, atthfix]];};
	case 2:
		{atthfix = atthfix-0.2;_object attachTo [player, [ 0, (((boundingBox _object select 1 select 1) max (-(boundingBox _object select 0 select 1))) max ((boundingBox _object select 1 select 0) max (-(boundingBox _object select 0 select 0)))) + 1,atthfix]];};
	};
	R3F_LOG_mutex_local_verrou = false;
};