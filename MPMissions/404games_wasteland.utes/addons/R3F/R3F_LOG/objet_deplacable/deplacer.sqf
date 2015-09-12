/**opyright (C) 2010 madbull ~R3F~ */
atthfix = 1;
_currentAnim =	animationState player;
_config = configFile >> "CfgMovesMaleSdr" >> "States" >> _currentAnim;
_onLadder =(getNumber (_config >> "onLadder"));
if(_onLadder == 1) exitWith{chocoland globalChat "You can't move this object while on a ladder";};

if (R3F_LOG_mutex_local_verrou) then
{
	chocoland globalChat STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	R3F_LOG_mutex_local_verrou = true;
	
	R3F_LOG_objet_selectionne = objNull;
	
	private ["_objet", "_est_calculateur", "_arme_principale", "_action_menu_release_relative", "_action_menu_release_horizontal" , "_action_menu_45", "_action_menu_90", "_action_menu_180", "_azimut_canon"];
	
	_objet = _this select 0;

	_tempVar = false;

	_est_calculateur = _objet getVariable "R3F_ARTY_est_calculateur";
	
		_objet setVariable ["R3F_LOG_est_deplace_par", player, true];
		
		R3F_LOG_joueur_deplace_objet = _objet;
		
		
		_arme_principale = primaryWeapon player;
		if (_arme_principale != "") then
                		{
                
			player removeWeapon _arme_principale;
                        		}
		else {sleep 0.5;};
		
		
		if (!alive player) then
		{
			R3F_LOG_joueur_deplace_objet = objNull;
			_objet setVariable ["R3F_LOG_est_deplace_par", objNull, true];
			_objet setPosATL [getPosATL _objet select 0, getPosATL _objet select 1, getPosATL _objet select 2];
			_objet setVelocity [0, 0, 0];
			
			R3F_LOG_mutex_local_verrou = false;
		}
		else
		{
			_objet attachTo [player, [
				0,
				(((boundingBox _objet select 1 select 1) max (-(boundingBox _objet select 0 select 1))) max ((boundingBox _objet select 1 select 0) max (-(boundingBox _objet select 0 select 0)))) + 1,
				1]
			];
			
			if (count (weapons _objet) > 0) then
			{
				
				_azimut_canon = ((_objet weaponDirection (weapons _objet select 0)) select 0) atan2 ((_objet weaponDirection (weapons _objet select 0)) select 1);
				
				
				R3F_ARTY_AND_LOG_PUBVAR_setDir = [_objet, (getDir _objet)-_azimut_canon];
				if (isServer) then
				{
					["R3F_ARTY_AND_LOG_PUBVAR_setDir", R3F_ARTY_AND_LOG_PUBVAR_setDir] spawn R3F_ARTY_AND_LOG_FNCT_PUBVAR_setDir;
				}
				else
				{
					publicVariable "R3F_ARTY_AND_LOG_PUBVAR_setDir";
				};
			};
			
			R3F_LOG_mutex_local_verrou = false;
			R3F_LOG_force_horizontally = false;
			
			_action_menu_release_relative = player addAction [("<t color=""#21DE31"">" + STR_R3F_LOG_action_relacher_objet + "</t>"), "addons\R3F\R3F_LOG\objet_deplacable\relacher.sqf", false, 5, true, true];
			_action_menu_release_horizontal = player addAction [("<t color=""#21DE31"">" + STR_RELEASE_HORIZONTAL + "</t>"), "addons\R3F\R3F_LOG\objet_deplacable\relacher.sqf", true, 5, true, true];
			chocoland globalChat "use Q (Move up), R (Move down) and F to Rotate 45°";
                  atthfix = 1;
			
			while {!isNull R3F_LOG_joueur_deplace_objet && alive player} do
			{  
				if (vehicle player != player) then
				{
					chocoland globalChat STR_R3F_LOG_ne_pas_monter_dans_vehicule;
					player action ["eject", vehicle player];
					sleep 1;
				};
				
				
			};
			
			
			detach _objet;
			if(R3F_LOG_force_horizontally) then {
				R3F_LOG_force_horizontally = false;

				_opos = getPosASL _objet;
				_ppos = getPosASL player;
				_opos set [2, _ppos select 2];
				_opos2 = +_opos;
				_opos2 set [2, (_opos2 select 2) - 1];
				if(terrainIntersectASL [_opos, _opos2]) then {
					_objet setPos [getPos _objet select 0, getPos _objet select 1, 0.0014];
                                        
				} else {
					
                                        _objet setPos [getPos _objet select 0, getPos _objet select 1, 0.0014];
				};
			} else {
				if((getPosATL player select 2) < 5) then {
					_objet setPos [getPos _objet select 0, getPos _objet select 1, getPosATL _objet select 2];
				} else {
					_objet setPosATL [getPosATL _objet select 0, getPosATL _objet select 1, getPosATL _objet select 2];
				};
			};
			
			player removeAction _action_menu_release_relative;
			player removeAction _action_menu_release_horizontal;
			
			R3F_LOG_joueur_deplace_objet = objNull;
			
			_objet setVariable ["R3F_LOG_est_deplace_par", objNull, true];
		if (alive player && _arme_principale != "") then
			{
				if(primaryWeapon player != "") then {
                                  	_o = createVehicle ["WeaponHolder", player modelToWorld [0,0,0], [], 0, "NONE"];
					_o addWeaponCargoGlobal [_arme_principale, 1];
				} else {
					player addWeapon _arme_principale;
					player selectWeapon _arme_principale;
					player selectWeapon (getArray (configFile >> "cfgWeapons" >> _arme_principale >> "muzzles") select 0);
                                            
				};
			};
		};
	
};