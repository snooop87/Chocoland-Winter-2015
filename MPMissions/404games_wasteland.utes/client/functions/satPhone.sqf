
_currObject = getPos player nearestObject "SatPhone"; 
_chance = 0;
_percent =0;
_totalDuration = floor (random 10)+1;
if (player distance _currObject < 4)
 then {
       process = true;
	_unlockDuration = _totalDuration;
	_iteration = 0;
               
_stringEscapePercent = "%";
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		for "_iteration" from 1 to _unlockDuration do {
                    
                    if(player distance _currObject > 3) exitWith {  process = false;
                          2 cutText ["Object redeem failed, you too far away...", "PLAIN DOWN", 1];
                           process = false;};
			
            if (!(alive player)) exitWith {// If the player dies, revert state.
				2 cutText ["Object redeem failed, you are dead...", "PLAIN DOWN", 1];
                              process = false; };
                               
            if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the unlock.
                player switchMove "AinvPknlMstpSlayWrflDnon_medic";
            };
			_unlockDuration = _unlockDuration - 1;
		    _iterationPercentage = floor (_iteration / _totalDuration * 100);
			2 cutText [format["redeeming chocos %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
		    sleep 1;
			if (_iteration >= _totalDuration) exitWith {
                          
[]call countingbounty;[]call countingbounty;
titleText [format["\n you got +0.2 Multiplier"], "PLAIN DOWN", 0];

                deletevehicle _currObject;
            
                process = false;
                }; 
		};
		player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon";   
      
       } else {hint " your are too far away";};
