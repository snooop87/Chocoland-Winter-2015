

private ["_townName","_randomLoc","_pos","_switch"];
BOMB = false;
waituntil {!isnil "bis_fnc_init"};
_switch = _this select 0;
switch (_switch) do
{ 
 case 1:{_randomLoc = [3208,3535,0];};//Kabanino NW 
 case 2:{_randomLoc = [3900,4100,0];};//Dubrovka NE
 case 3:{_randomLoc = [3402,3064,0];};//Kozlovka SW 
 case 4:{_randomLoc = [4522.86,3231.71,0];};//Msta SE
    };
 //_range = [1, 700] call BIS_fnc_randomNum;
//_direction = [1, 359] call BIS_fnc_randomNum;
//_bubblepos = [_randomLoc,_range,_direction] call BIS_fnc_relPos;
player setPosATL _randomLoc;
2 cutText ["Suicide jump initialized. Open Your Parachute at the Ground!!Use MOUSEWHEEL", "PLAIN DOWN", 3];
chocoland globalChat " Open your parachute at the ground.";
sleep 0.3;
[player, 1000] exec "ca\air2\halo\data\Scripts\HALO_init.sqs"; player setPosATL _bubblepos;
  
    titleText ["", "BLACK IN", 7];
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

[
	"Paradropping into","darkness",format ["%1:%3%2", floor(daytime), _mins, if(_mins < 10) then {"0"} else {""}]
] spawn BIS_fnc_infoText;
 bombId = player addAction[('<t color=''#FF33CC''>' + ('arm with ChocoBomb for 2500K$') +  '</t>'),'client\functions\bomb.sqf'];
player allowDamage false;
//Altimeter reading at top right
while {((getposATL player)select 2) > 1 || (alive player)} do
{ hintsilent parseText format ["<t align='center' color='#00aa00' font='Zeppelin33' shadow='1' shadowColor='#000000' size='2'>Alt %1m</t>", round (getPosATL player select 2)];//};
sleep 0.1;
};

if (((getposATL player)select 2) < 1) then
{
    if(BOMB)then { player setdamage 1;};
    player removeaction bombId;
sleep 3;
 player allowDamage true;

};
