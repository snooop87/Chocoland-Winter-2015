_baum=0;
if (str(playerSide) == "GUER")then {_baum = [1,group player]};
if (str(playerSide) == "WEST") then {_baum = [2]};
if (str(playerSide) == "EAST") then {_baum = [3]};
if (capturecore select 0 == _baum select 0) exitWith {chocoland globalchat"the servercore belongs to your Team, you cannot Destroy it!";};
 _obj = (nearestobjects [player, ["76n6ClamShell"],  30]) select 0;


 mutexScriptInProgress =true;
		_totalDuration = 12;
		_unlockDuration = _totalDuration;
		_iteration = 0;
                _stringEscapePercent = "%";
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		for "_iteration" from 1 to _unlockDuration do {
                   if(!mutexScriptInProgress)exitwith{hint "chanceled";process = false;mutexScriptInProgress =false;};
                    
            if (!(alive player)) exitWith {// If the player dies, revert state.
				2 cutText ["capturing chococore, you are dead...", "PLAIN DOWN", 1];
                              _mutexScriptInProgress =false ; };
                              
            if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the unlock.
                player switchMove "AinvPknlMstpSlayWrflDnon_medic";
            };
			_unlockDuration = _unlockDuration - 1;
		    _iterationPercentage = floor (_iteration / _totalDuration * 100);
2 cutText [format["destroy servercore %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
sleep 1;
if (_iteration >= _totalDuration) exitWith {
chocoland globalChat "ServerCore Destroyed.You got +0.1 Chocos and 10.000$."; 
servercore2 setdamage 1;
deletevehicle servercore2;[]call countingbounty;
player setVariable["cmoney",(player getVariable "cmoney") +10000,true];
player setvariable["ongui2","",false];"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0, 0, 0, 0.6],[0, 0, 0, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;

};
};
process = false;mutexScriptInProgress =false ;	player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; // Redundant reset of animation state to avoid getting locked in animation.     
      
     