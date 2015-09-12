/**Copyright (C) 2010 madbull ~R3F~*/

private ["_objet", "_est_desactive", "_est_transporte_par", "_est_deplace_par", "_objectState", "_doLock", "_doUnlock","_currentAnim","_config","_onLadder"];

_objet = _this select 0;

_doLock = 0;
_player = player;
_doUnlock = 1;

_est_desactive = _objet getVariable "R3F_LOG_disabled";
if (isNil "_est_desactive") then
{
	_objet setVariable ["R3F_LOG_disabled", false];
};


_est_transporte_par = _objet getVariable "R3F_LOG_est_transporte_par";
if (isNil "_est_transporte_par") then
{
	_objet setVariable ["R3F_LOG_est_transporte_par", objNull, false];
};


_est_deplace_par = _objet getVariable "R3F_LOG_est_deplace_par";
if (isNil "_est_deplace_par") then
{
	_objet setVariable ["R3F_LOG_est_deplace_par", objNull, false];
};


_objet addEventHandler ["GetIn",
{
	if (_this select 2 == player) then
	{
		_this spawn
		{
			if ((!(isNull (_this select 0 getVariable "R3F_LOG_est_deplace_par")) && (alive (_this select 0 getVariable "R3F_LOG_est_deplace_par"))) || !(isNull (_this select 0 getVariable "R3F_LOG_est_transporte_par"))) then
			{
				player action ["eject", _this select 0];
				chocoland globalChat STR_R3F_LOG_transport_en_cours;
			};
		};
	};
}];

if ({_objet isKindOf _x} count R3F_LOG_CFG_objets_deplacables > 0 ) then
{
 _objet addAction [("<t color=""#dddd00"">" + STR_R3F_LOG_action_deplacer_objet + "</t>"), "addons\R3F\R3F_LOG\objet_deplacable\deplacer.sqf", nil, 5, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_deplacer_objet_valide && !(_target getVariable ['objectLocked', false])"];
//locked MOVE object
_objet addAction [("<t color=""#DF0101"">" + STR_R3F_LOG_action_deplacer_objet + "</t>"), "addons\R3F\R3F_LOG\objet_deplacable\objectLockStateMachine.sqf", 1, 5, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_deplacer_objet_valide && !Object_canLock"];
_objet addAction [("<t color=""#FF6600"">" + STR_LOCK_OBJECT + "</t>"), "addons\R3F\R3F_LOG\objet_deplacable\objectLockStateMachine.sqf",0, 4, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_deplacer_objet_valide && !(_target getVariable ['objectLocked', false])"];
//lock objects
_objet addAction [("<t color=""#FF6600"">" + STR_UNLOCK_OBJECT + "</t>"), "addons\R3F\R3F_LOG\objet_deplacable\objectLockStateMachine.sqf",2, 4, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_deplacer_objet_valide && str(_target getvariable'playerguid' select 0) == str (getplayeruid player) && (_target getVariable ['objectLocked', false])"];
//unlock
_objet addAction [("<t color=""#dddd00"">ChocoDoor</t>"), "client\chocofunc\chocodoor.sqf", nil, -5, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_deplacer_objet_valide  && str(_target getvariable'playerguid' select 0) == str (getplayeruid player) && (_target getVariable ['objectLocked', false])"];
//_objet addAction [("<t color=""#dddd00"">Decode This Object</t>"), "client\functions\decoder.sqf", nil, -6, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_deplacer_objet_valide && !Dcooldown"];

};

if ({_objet isKindOf _x} count R3F_LOG_CFG_objets_remorquables > 0) then
{
	if ({_objet isKindOf _x} count R3F_LOG_CFG_objets_deplacables > 0) then
	{
		_objet addAction [("<t color=""#dddd00"">" + STR_R3F_LOG_action_remorquer_deplace + "</t>"), "addons\R3F\R3F_LOG\remorqueur\remorquer_deplace.sqf", nil, 6, true, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_remorquer_deplace_valide"];
	};
	
	_objet addAction [("<t color=""#dddd00"">" + STR_R3F_LOG_action_selectionner_objet_remorque + "</t>"), "addons\R3F\R3F_LOG\remorqueur\selectionner_objet.sqf", nil, 5, false, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_selectionner_objet_remorque_valide && Object_canLock"];
	
	_objet addAction [("<t color=""#dddd00"">" + STR_R3F_LOG_action_detacher + "</t>"), "addons\R3F\R3F_LOG\remorqueur\detacher.sqf", nil, 1, true, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_detacher_valide"];
};

if ({_objet isKindOf _x} count R3F_LOG_classes_objets_transportables > 0) then
{
	if ({_objet isKindOf _x} count R3F_LOG_CFG_objets_deplacables > 0) then
	{
		_objet addAction [("<t color=""#dddd00"">" + STR_R3F_LOG_action_charger_deplace + "</t>"), "addons\R3F\R3F_LOG\transporteur\charger_deplace.sqf", nil, 4, true, true, "", "R3F_LOG_objet_addAction == _target && R3F_LOG_action_charger_deplace_valide"];
	};
	
	_objet addAction [("<t color=""#dddd00"">" + STR_R3F_LOG_action_selectionner_objet_charge + "</t>"), "addons\R3F\R3F_LOG\transporteur\selectionner_objet.sqf", nil, 3, false, true, "", "Object_canLock"];
};