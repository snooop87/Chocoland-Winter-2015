_funcship= {
    while (shipspawned)do {
    _var = (player getvariable"mothership") select 1;
    if(_var < 1)then{shipspawned =false;player setvariable["motherhip",[0,0],true];deletevehicle mothership1;deletevehicle mothership2;deletevehicle mothership3;deletevehicle mothership4;};
    player setvariable["motherhip",[1,_var -1],true];
    sleep 60;
    };
};
//player setvariable["motherhip",[1,360],true];
if ((player getvariable"mothership")select 0 == 0)then {shipspawned=true;player setvariable["motherhip",[1,360],true];[]spawn _funcship;};
_pos = getpos player;mothership1 = "RHIB2Turret" createVehicle _pos;mothership1 setpos _pos;  
mothership2 = "Land_Fregata" createVehicle _pos;mothership2 setpos _pos;mothership2 attachTo [mothership1,[0,0.5,0.5]];
mothership2 setdir 180;player moveindriver mothership1;  player assignAsDriver mothership1; mothership3 = "M119" createVehicle _pos;
mothership3 setpos _pos;mothership3 attachTo [mothership2,[0,20,13]];mothership2 setdir 180; mothership4 = "ZU23_TK_EP1" createVehicle _pos;
mothership4 setpos _pos;mothership4 attachTo [mothership2,[0,-20,19]];mothership2 setdir 180;
