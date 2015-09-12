
if(mutexScriptInProgress) exitWith {};
mutexScriptInProgress = true;
_camonet = =(nearestobjects [player, ["Land_CamoNet_NATO"],  10] select 0);

player playmove "AinvPknlMstpSlayWrflDnon";
sleep 2.9;
player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; // Redundant reset of animation state to avoid getting locked in animation. 
sleep 1;deleteVehicle _camonet;
mutexScriptInProgress = false;

