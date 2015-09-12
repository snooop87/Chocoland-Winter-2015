/**Copyright (C) 2010 madbull ~R3F~*/

if (R3F_LOG_mutex_local_verrou) then
{
	chocoland globalChat STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	R3F_LOG_mutex_local_verrou = true;
	
	private ["_remorqueur", "_objet"];
	
	_objet = _this select 0;
	_remorqueur = _objet getVariable "R3F_LOG_est_transporte_par";
	
	
	if ({_remorqueur isKindOf _x} count R3F_LOG_CFG_remorqueurs > 0) then
	{
	
		_remorqueur setVariable ["R3F_LOG_remorque", objNull, true];
		
		_objet setVariable ["R3F_LOG_est_transporte_par", objNull, true];
		
		detach _objet;
		_objet setVelocity [0, 0, 0];
		
		player playMove "AinvPknlMstpSlayWrflDnon_medic";
		sleep 7;
		
		if ({_objet isKindOf _x} count R3F_LOG_CFG_objets_deplacables > 0) then
		{
			
			if (isNull (_remorqueur getVariable "R3F_LOG_remorque") &&
				(isNull (_objet getVariable "R3F_LOG_est_transporte_par")) &&
				(isNull (_objet getVariable "R3F_LOG_est_deplace_par"))
			) then
			{
				[_objet] execVM "addons\R3F\R3F_LOG\objet_deplacable\deplacer.sqf";
			};
		}
		else
		{
			chocoland globalChat STR_R3F_LOG_action_detacher_fait;
		};
	}
	else
	{
		chocoland globalChat STR_R3F_LOG_action_detacher_impossible_pour_ce_vehicule;
	};
	
	R3F_LOG_mutex_local_verrou = false;
};