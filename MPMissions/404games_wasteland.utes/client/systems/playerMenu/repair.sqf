//	@file Version: 1.0
//	@file Name: repair.sqf
//	@file Original Author: TAW_Tonic
//  @file Author: [404] Costlyy
//	@file Created: 29/01/2013 00:00
//	@file Args: 

// Check if mutex lock is active.
if(mutexScriptInProgress) exitWith {
	chocoland globalChat localize "STR_WL_Errors_InProgress";
};

private["_currVehicle","_currVehicleType","_stringEscapePercent","_iteration","_loopSpeed","_iterationAmount","_iterationPercentage"];

_currVehicle = nearestObjects[player, ["LandVehicle", "Air", "Ship"], 7] select 0;
_currVehicleType = typeOf _currVehicle;
_stringEscapePercent = "%"; // Required to get the % sign into a formatted string.
_iteration = 0;

// PRECONDITION: Check player is not in a car (driver/passenger etc).
if(vehicle player != player) exitWith { chocoland globalChat localize "STR_WL_Errors_InVehicle"; };
// PRECONDITION: Check for vehicle near-by, if exists then select closest.
if(isNil{_currVehicle}) exitWith { hint "No vehicle within range"; };

	
    mutexScriptInProgress = true;  
    _currPlayerState = animationState player;
    player switchMove "AinvPknlMstpSlayWrflDnon_medic";
    
    _totalDuration = 5;
    _totalDuration = count playableunits;
	_iterationAmount = _totalDuration;
    
	for "_iteration" from 1 to _iterationAmount do {
    
        if(vehicle player != player) exitWith { // Player is in a vehicle
			2 cutText ["Vehicle is too far away...", "PLAIN DOWN", 1];
		};  
            
        if (doCancelAction) exitWith {// Player selected "cancel action".
    		2 cutText ["Vehicle is too far away...", "PLAIN DOWN", 1];
      		doCancelAction = false;
    		player switchMove _currPlayerState;
		}; 
            
   		if (!(alive player)) exitWith {// If the player dies, revert state.
			2 cutText ["Vehicle is too far away...", "PLAIN DOWN", 1];
		};
                
		if(player distance _currVehicle > 7) exitWith { // If the player leaves, revert state.
			2 cutText ["Vehicle is too far away...", "PLAIN DOWN", 1];
		}; 
            
    	if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the loop.
			player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		};
            
     	_iterationAmount = _iterationAmount - 1;
		_iterationPercentage = floor (_iteration / _totalDuration * 100);
				    
		2 cutText [format["Vehicle preparing %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
		sleep 1;
            
     	if (_iteration >= _totalDuration) exitWith { // Success conditions
    		sleep 1;
			2 cutText ["", "PLAIN DOWN", 1];
      		player switchMove _currPlayerState;
  			player setVariable["repairkits",0,false];
      		_currVehicle setDamage 0;
                _currVehicle setFuel 1;
                _currVehicle setvehicleammo 1;
               
   		};
    };


sleep 1;
2 cutText ["your Vehicle is Ready", "PLAIN DOWN", 1];
mutexScriptInProgress = false;