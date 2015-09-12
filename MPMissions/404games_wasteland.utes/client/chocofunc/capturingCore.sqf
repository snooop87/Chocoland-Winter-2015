 _baum = 0;
 _time = 0;
 _obj = (nearestobjects [player, ["76n6ClamShell"],  30]) select 0;
 _obj setvariable ["basecore",0,true];
 mutexScriptInProgress =true;
if (str(playerSide) == "GUER")then {_baum = [1,group player]};
if (str(playerSide) == "WEST") then {_baum = [2]};
if (str(playerSide) == "EAST") then {_baum = [3]};
      
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
2 cutText [format["capturing servercore %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
sleep 1;
if (_iteration >= _totalDuration) exitWith {
sleep 1;
capturecore =_baum;publicvariable"capturecore";
chocoland globalChat "CoreBuff Activated.";            
chocoland globalChat "Good Job, the ChocoCore belongs to your Team for 10 Minutes. Defend it and get AWESOME REWARD";
player setvariable["bounty",(player getvariable"bounty")+1,true];
player setvariable["cmoney",(player getvariable"cmoney")+10000,true];
if (_baum select 0 == 0)then {player setvariable["ongui2","",false];"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0, 0, 0, 0.6],[0, 0, 0, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;
};
     if (_baum select 0 == 1)then {player setvariable["ongui2","Independent Captured.",false];
     "colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0, 0.0], [0, 1, 0, 0.6],[0, 1, 0, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;

};
      if (_baum select 0 == 2)then {player setvariable["ongui2","Blufor Captured.",false];
      "colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0, 0.0], [0, 0, 1, 0.6],[0, 0, 1, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;

};
       if (_baum select 0 == 3)then {player setvariable["ongui2","Opfor Captured.",false];
       "colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0, 0.0], [1, 0,0, 0.6],[1, 0, 0, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;

};
process = false;mutexScriptInProgress =false;
_time=0;
waituntil{_time=_time+1;servercore2 setvariable["wallet",(servercore2 getvariable"wallet")+167,true];sleep 1; _time == 600};
if(alive  servercore2)then {
player setvariable["bounty",(player getvariable"bounty")+1,true];
player setvariable["cmoney",(player getvariable"cmoney")+100000,true];
chocoland globalChat "Good Job + 1 choco + 50.000 $";
};
 servercore2 setdamage 1;deletevehicle servercore2;
player setvariable["ongui2","",false];
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0, 0, 0, 1],[0, 0, 0, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;  

};
};
_obj setvariable ["basecore",1,true];	process = false;mutexScriptInProgress =false ;	player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; // Redundant reset of animation state to avoid getting locked in animation.     
      
     