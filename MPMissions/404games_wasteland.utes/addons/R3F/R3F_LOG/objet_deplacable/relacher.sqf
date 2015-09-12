
if (R3F_LOG_mutex_local_verrou) then
{
	chocoland globalChat STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	_doReleaseHorizontally = _this select 3;

	R3F_LOG_mutex_local_verrou = true;
	
	if (_doReleaseHorizontally) then {
            
		R3F_LOG_force_horizontally = true;};
  if(player getvariable["basebuilder",0] ==1)then {R3F_LOG_joueur_deplace_objet setVariable ["objectLocked", true, true];
   R3F_LOG_joueur_deplace_objet setVariable ["playerGUID", [puid,name player], true];};
R3F_LOG_joueur_deplace_objet = objNull;
R3F_LOG_mutex_local_verrou = false;
};