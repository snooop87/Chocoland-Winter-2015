
_xpos= getmarkerpos"Mission";
_pos=[_xpos, 200, 5000, 5, 0, 10, 0] call BIS_fnc_findSafePos;
//layer setPos _pos;
      
    2 cutText ["Suicide jump initialized. Open Your Parachute at the ground!!Use MOUSEWHEEL", "PLAIN DOWN", 3];
player setPos _pos; // Stop the player appearing on the ground for a split second before the HALO 
    [player, 1000] exec "ca\air2\halo\data\Scripts\HALO_init.sqs";   
    respawnDialogActive = false;
    closeDialog 0;

//Force 3rd person view at spawning
firstperson_allowed = false;
while {not firstperson_allowed} do {

    if(cameraView == "INTERNAL" || cameraView == "GROUP") then {
        vehicle player switchCamera "EXTERNAL";
    };

    sleep 0.1;
    firstperson_allowed = true;
};

sleep 5;


//Altimeter reading at top right
while {((getposATL player)select 2) > 1} do
{
    hintsilent parseText format ["<t align='center' color='#00aa00' font='Zeppelin33' shadow='1' shadowColor='#000000' size='2'>Alt %1m</t>", round (getPosATL player select 2)];

player allowDamage false;
sleep 0,1;
};
sleep 3;
 player allowDamage true;
_mins = floor(60 * (daytime - floor(daytime)));
_townName = _randomLoc select 2;
[
    "Paradropping into","RandomHalo",format ["%1:%3%2", floor(daytime), _mins, if(_mins < 10) then {"0"} else {""}]
] spawn BIS_fnc_infoText;
