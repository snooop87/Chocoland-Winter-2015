
//	@file Version: 1.0
//	@file Name: pickupBecon.sqf
//	@file Author: [404] Costlyy, Redshirt_Ensign
//	@file Created: 7/12/2012 23:30
//	@file Args:

// PRECONDITION: Check if mutex lock is active.
if(mutexScriptInProgress) exitWith {
	chocoland globalChat localize "STR_WL_Errors_InProgress";
};

private["_stringEscapePercent","_totalDuration","_lockDuration","_iteration","_iterationPercentage","_playerPos","_placedBeacon", "_lockDuration", "_beaconOwner", "_placedBeaconPos", "_playerSide", "_playerUID", "_activeBeacon"];

// Get Player Location
_playerPos = getPosATL player;

// PRECONDITION: Check that a player is not currently a car (driving)
if(vehicle player != player) exitWith {
	chocoland globalChat localize "STR_WL_Errors_InVehicle";
};

player switchMove "AinvPknlMstpSlayWrflDnon_medic"; // Begin the full medic animation...
_var = 0;
_players =1;
{if (alive _x) then{  _players = _players +1;};
}forEach playableUnits;
 _totalDuration = _players;
 _lockDuration = _players;
_iteration = 0;
_stringEscapePercent = "%";
mutexScriptInProgress = true;
for "_iteration" from 1 to _players do {
    

	if(vehicle player != player) exitWith {mutexScriptInProgress = false;
	chocoland globalChat "BeaconInVehicle";
        player action ["eject", vehicle player];
	};  
    
      
    if (!(alive player)) exitWith {// If the player dies, revert state.
		2 cutText ["Place spawn beacon interrupted...", "PLAIN DOWN", 1];
    	mutexScriptInProgress = false;
	};	
    		    
             
                                                        	    
	if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the placement.
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";mutexScriptInProgress = false;
	};
    	    
	_lockDuration = _lockDuration - 1;
	_iterationPercentage = floor (_iteration / _totalDuration * 100);
					    
	2 cutText [format["Placing spawn beacon %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
	sleep 1;
					    
	if (_iteration >= _totalDuration) exitWith { 
		sleep 1;
		2 cutText ["", "PLAIN DOWN", 1];
		
		_placedBeacon = "Satelit" createVehicle position player;
                _placedBeacon setPosATL _playerPos;
		_placedBeacon addEventHandler["handleDamage", {false}];
		_placedBeacon setVariable["R3F_LOG_disabled", true];
            _uid = name player;
          _placedBeacon enableSimulation false;
                      _placedBeacon enableSimulation false;
            player setVariable["spawnBeacon",0,true];
                player setVariable["beacon",1,true];
                chocobeacon = _placedBeacon;
            mutexScriptInProgress = false;
            2 cutText [format["you got automatically linked to this choco beacon"], "PLAIN DOWN", 1];
	sleep 1;
};
};

player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; 

          