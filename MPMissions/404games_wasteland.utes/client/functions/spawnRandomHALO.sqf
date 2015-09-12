
BOMB = false;
waituntil {!isnil "bis_fnc_init"};
private ["_townName","_randomLoc","_pos"];
_randomLoc = cityList select (random (count cityList - 1));

_xpos= getmarkerpos"Mission";
_pos=[_xpos, 200, 5000, 5, 0, 10, 0] call BIS_fnc_findSafePos;

player setPos _pos;
            
    2 cutText ["Suicide jump initialized. Open Your Parachute at the Ground!!Use MOUSEWHEEL", "PLAIN DOWN", 3];
chocoland globalChat " Open your parachute at the ground.";
player setPos [_pos select 0, _pos select 1, 1000]; // Stop the player appearing on the ground for a split second before the HALO 
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
_mins = floor(60 * (daytime - floor(daytime)));
_townName = _randomLoc select 2;
[
    "Paradropping into",_townName,format ["%1:%3%2", floor(daytime), _mins, if(_mins < 10) then {"0"} else {""}]
] spawn BIS_fnc_infoText;
 bombId = player addAction[('<t color=''#FF33CC''>' + ('arm with ChocoBomb for 25K$') +  '</t>'),'client\functions\bomb.sqf'];

//Altimeter reading at top right
while {((getposATL player)select 2) > 1} do
{
    hintsilent parseText format ["<t align='center' color='#00aa00' font='Zeppelin33' shadow='1' shadowColor='#000000' size='2'>Alt %1m</t>", round (getPosATL player select 2)];

player allowDamage false;
sleep 0,1;
};
if (((getposATL player)select 2) < 1) then
{
    if(BOMB)then { player setdamage 1;};
    player removeaction bombId;
sleep 3;
 player allowDamage true;

};
