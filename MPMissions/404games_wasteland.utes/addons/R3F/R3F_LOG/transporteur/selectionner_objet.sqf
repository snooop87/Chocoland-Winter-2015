
 _currObject =cursortarget;
 _Test =_currObject getvariable["playerGUID",""];

if (_test !=name player)exitwith {
                     2 cutText [format["You Cannot load in this Object, %1 is the Owner of this Object",_currobject getvariable["playerGUID",""]], "PLAIN DOWN", 1];
                    R3F_LOG_mutex_local_verrou = false;};
if (R3F_LOG_mutex_local_verrou) then
{
	chocoland globalChat STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	_tempVar = false;
	if(!isNil {(_this select 0) getVariable "R3F_Side"}) then {
		if(side player != ((_this select 0) getVariable "R3F_Side")) then {
			{if(side _x ==  ((_this select 0) getVariable "R3F_Side") && alive _x && _x distance (_this select 0) < 150) exitwith {_tempVar = true;};} foreach AllUnits;
		};
	};
	if(_tempVar) exitwith {hint format["This object belongs to %1 and they're nearby you cannot take this.", (_this select 0) getVariable "R3F_Side"]; R3F_LOG_mutex_local_verrou = false;};

	R3F_LOG_mutex_local_verrou = true;
	
	R3F_LOG_objet_selectionne = _this select 0;
	chocoland globalChat format [STR_R3F_LOG_action_selectionner_objet_charge_fait, getText (configFile >> "CfgVehicles" >> (typeOf R3F_LOG_objet_selectionne) >> "displayName")];
	
	R3F_LOG_mutex_local_verrou = false;
};