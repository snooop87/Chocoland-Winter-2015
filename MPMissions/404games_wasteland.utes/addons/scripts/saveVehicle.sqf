

if (!(isengineOn vehicle player) AND  ((velocity vehicle player select 2) <= 1) AND ((velocity vehicle player select 1) <= 1) AND((velocity vehicle player select 0) <= 1))
then {
    
    _vehicleSave = vehicle player;
     vehicleSave1 = typeof vehicle player;
   player action ["getOut", vehicle player];
  sleep 0.5;
  player switchMove "AinvPknlMstpSlayWrflDnon_medic";
  sleep 0.2;
    if (!isPlayer _vehicleSave) then {
       vehicleSave=_vehicleSave;
      
vehiclesaveattach = "HeliHEmpty" createVehicle [0, 0, 0];
_xveh = typeof vehicleSave; player setvariable["saveVehicle",_xveh,true];
_nic = [nil, vehicleSave, "per", rHideobject, true] call RE; 
_position_attache = [random 3000, random 3000, (10000 + (random 3000))];
vehicleSave attachTo [vehiclesaveattach, _position_attache];

    chocoland globalchat format ["%1 saved to Hangar! (you can spawn it on your PlayerMenu)", vehicleSave1];
    sleep 1;
    chocoland globalChat "Vehicle Saved.";
    player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon";
      } 
      else
      { chocoland globalChat "There is another Player in this Vehicle.";sleep 1;};
} 
else { chocoland globalChat "cannot Save Vehicle,pls stop and turn engine Off"; sleep 1;};
