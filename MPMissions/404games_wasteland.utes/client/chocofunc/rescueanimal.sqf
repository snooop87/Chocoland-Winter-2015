chocoland globalChat"Rescue and escort this animal to the helipad on the airfield. But be careful, if it dies, you will too. You only have only 4 minutes time until it dies.";
_animal = nearestobjects [player, ["Hen","Rabbit","Cow04","Pastor","Goat"],  5] select 0;

if(isnil"_animal")exitwith{};

_pos = getpos _animal ;
_type =  typeof _animal ;
deletevehicle _animal ;
_grp= group player;
_animal = _grp createunit [_type,_pos,[],0,"FORM"];
_animal addEventHandler ["Killed", {_this execVM "server\functions\bomb_midair.sqf";}];
processInitCommands;
[_animal]spawn {
    RESCUE= true;
_animal = _this select 0;
_leben= 240;
_animalMission =false;
//leben abziehen 240 sec von 100 leben
while{alive _animal} do {
if (_leben <1 || !alive _animal)then { _animal setdamage 1;
chocoland globalChat" oh no you lost this missions";RESCUE =false;};
_leben = _leben - 1;
player setvariable["cmoney",(player getvariable"cmoney")+2,true];
if (fp8 distance _animal < 10)then {chocoland globalChat format [" great you get a little Reward (%1$)",floor ((player getvariable"bounty")*1000)];
    deletevehicle _animal ;
    RESCUE= false;
    _animalMission =true;
    player setvariable["cmoney",floor ((player getvariable"bounty")*(player getvariable"cmoney")+1000),true];
    };


sleep 1;
};
};