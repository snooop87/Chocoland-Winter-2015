if(mutexScriptInProgress) exitWith {
	chocoland globalChat localize "STR_WL_Errors_InProgress";
};

private["_stringEscapePercent","_totalDuration","_lockDuration","_iteration","_iterationPercentage","_currSpawnBeaconFaction", "_destroyOrSteal", "_currBeaconOwnerUID", "_currBeaconTemp"];

if(vehicle player != player) exitWith {
	chocoland globalChat localize "STR_WL_Errors_InVehicle";
};

_chocobeacon = (nearestobjects [getposatl player, ["Satelit"],  5] select 0);
_destroyOrSteal = _this select 3;

_stringEscapePercent = "%";
_iteration = 0;

player switchMove "AinvPknlMstpSlayWrflDnon_medic"; // Begin the full medic animation...

switch (_destroyOrSteal) do {
    case 0:{ // Steal
_players =1;
{if (alive _x) then{  _players = _players +1;};
}forEach playableUnits;
    	_totalDuration = _players; // This will NOT be easy >:)
	_lockDuration = _totalDuration;
     	mutexScriptInProgress = true;

		for "_iteration" from 1 to _lockDuration do {

           	if(vehicle player != player) exitWith { // A little inspiration from R3F
				chocoland globalChat localize "STR_WL_Errors_BeaconInVehicle";
        		player action ["eject", vehicle player];
				sleep 1;
				mutexScriptInProgress = false;
			};

            if (doCancelAction) exitWith {// Player selected "cancel action".
    			2 cutText ["", "PLAIN DOWN", 1];
        		doCancelAction = false;
    			mutexScriptInProgress = false;
			};

            if (!(alive player)) exitWith {// If the player dies, revert state.
				2 cutText ["Steal spawn beacon interrupted...", "PLAIN DOWN", 1];
                mutexScriptInProgress = false;
			};

			if(player distance _currSpawnBeacon > 5) exitWith { // If the player leaves, revert state.
				2 cutText ["Steal spawn beacon interrupted...", "PLAIN DOWN", 1];
		        mutexScriptInProgress = false;
			};

		    if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the steal.
		        player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		    };

            _lockDuration = _lockDuration - 1;
			_iterationPercentage = floor (_iteration / _totalDuration * 100);

			2 cutText [format["Steal spawn beacon %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
			sleep 1;

			if (_iteration >= _totalDuration) exitWith { 
				sleep 1;
		        2 cutText ["", "PLAIN DOWN", 1];
deleteVehicle (nearestobjects [getposatl player, ["Satelit"],  10] select 0);
	                player setVariable["spawnBeacon",1,true];
	                hint "You have successfully stolen the enemy spawn beacon.";
			  mutexScriptInProgress = false;
};
			};
		};
    
    case 1:{ // Destroy
_players =1;
{if (alive _x) then{  _players = _players +1;};
}forEach playableUnits;
   	 	_totalDuration = _players; // This will NOT be easy >:)
		_lockDuration = _totalDuration;
                mutexScriptInProgress = true;

		for "_iteration" from 1 to _lockDuration do {

                        if(vehicle player != player) exitWith { // A little inspiration from R3F
			        chocoland globalChat localize "STR_WL_Errors_BeaconInVehicle";
        		        player action ["eject", vehicle player];
			        sleep 1;
				mutexScriptInProgress = false;
			};

                        if (doCancelAction) exitWith {// Player selected "cancel action".
    			        2 cutText ["", "PLAIN DOWN", 1];
        		        doCancelAction = false;
    			        mutexScriptInProgress = false;
			};

                        if (!(alive player)) exitWith {// If the player dies, revert state.
                                2 cutText ["Destroy spawn beacon interrupted...", "PLAIN DOWN", 1];
                                mutexScriptInProgress = false;
			};

                        if(player distance _currSpawnBeacon > 5) exitWith { // If the player leaves, revert state.
				2 cutText ["Destroy spawn beacon interrupted...", "PLAIN DOWN", 1];
		                mutexScriptInProgress = false;
			};

		        if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the destroy.
		                player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		        };

                        _lockDuration = _lockDuration - 1;
			_iterationPercentage = floor (_iteration / _totalDuration * 100);

                        2 cutText [format["Destroy spawn beacon %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
			sleep 1;

			if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that destroy has completed.
				sleep 1;
		                2 cutText ["", "PLAIN DOWN", 1];
 deleteVehicle (nearestobjects [getposatl player, ["Satelit"],  10] select 0);
	            hint "You have successfully destroyed the spawn beacon.";
			                 mutexScriptInProgress = false;
 };
};
};

  case 2:{ // linkup
_players =1;
_lockDuration = 0;
{if (alive _x) then{  _players = _players +1;};
}forEach playableUnits;
   	 	_totalDuration = _players;
		_lockDuration = _totalDuration;
                mutexScriptInProgress = true;

		for "_iteration" from 1 to _lockDuration do {

                        if(vehicle player != player) exitWith { // A little inspiration from R3F
			        chocoland globalChat localize "STR_WL_Errors_BeaconInVehicle";
        		        player action ["eject", vehicle player];
			        sleep 1;
				mutexScriptInProgress = false;
			};

                        if (doCancelAction) exitWith {// Player selected "cancel action".
    			        2 cutText ["", "PLAIN DOWN", 1];
        		        doCancelAction = false;
    			        mutexScriptInProgress = false;
			};

                        if (!(alive player)) exitWith {// If the player dies, revert state.
                                2 cutText ["Link-up choco beacon interrupted...", "PLAIN DOWN", 1];
                                mutexScriptInProgress = false;
			};

                     
		        if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then {
		                player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		        };

                        _lockDuration = _lockDuration - 1;
			_iterationPercentage = floor (_iteration / _totalDuration * 100);

                        2 cutText [format["linking spawn beacon %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
			sleep 1;
			if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that destroy has completed.
				sleep 1;
		                2 cutText ["", "PLAIN DOWN", 1];
chocobeacon = (nearestobjects [getposatl player, ["Satelit"],  5] select 0);
player setvariable["beacon",1,true];
chocoland globalChat  "you linked successfully to this choco beacon";
 mutexScriptInProgress = false;
			};
		};
    };


};
player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; 
