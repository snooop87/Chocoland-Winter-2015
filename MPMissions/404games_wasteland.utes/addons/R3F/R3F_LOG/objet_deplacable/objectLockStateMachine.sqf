//	@file Author: [404] Costlyy

if(R3F_LOG_mutex_local_verrou) exitWith {
	chocoland globalChat STR_R3F_LOG_mutex_action_en_cours;
};

private["_locking", "_currObject", "_lockState", "_lockDuration", "_stringEscapePercent", "_interation", "_unlockDuration", "_totalDuration"];

_currObject = _this select 0;
_lockState = _this select 3;

_totalDuration = 0;
_stringEscapePercent = "%";

switch (_lockState) do {
    case 0:{//lock
        _currObject setVariable ["objectLocked", true, true];
   _currObject setVariable ["playerGUID", [puid,name player], true];
   
   };
     case 1:{//unlock
     _test = (_currObject getvariable"playerGUID") select 0;
	if (str _test == str puid)then {
            _currObject setVariable ["objectLocked", false, true];_currObject setVariable ["playerGUID", nil, true];
                [_currObject]execVM"addons\R3F\R3F_LOG\objet_deplacable\deplacer.sqf";
                }else{
        2 cutText [format["You Cannot Unlock this Object, %1 is the Owner of this Object",(_currobject getvariable["playerGUID",""]) select 1], "PLAIN DOWN", 1];};};
       case 2:{
           if(((_currObject getvariable"playerGUID")select 0) == puid)then {_currObject setVariable ["objectLocked", false, true];
   _currObject setVariable ["playerGUID", nil, true];
   }else{chocoland globalChat"you cannot Lock this object, you need Basebuilder"};
   };
                
player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; // Redundant reset of animation state to avoid getting locked in animation.     
      if !(R3F_LOG_mutex_local_verrou) then {
        R3F_LOG_mutex_local_verrou = false;
        diag_log format["WASTELAND DEBUG: An error has occured in LockStateMachine.sqf. Mutex lock was not reset. Mutex lock state actual: %1", R3F_LOG_mutex_local_verrou];
};};
