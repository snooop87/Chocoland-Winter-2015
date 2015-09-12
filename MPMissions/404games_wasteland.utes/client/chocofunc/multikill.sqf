

private["_multikill", "_nameplayer"];

_multikill = _this select 0;
_nameplayer = _this select 1;
if(isnil"_multikill")exitwith{};
quake = {		for "_i" from 0 to 140 do {
			_vx = vectorup _this select 0;
			_vy = vectorup _this select 1;
			_vz = vectorup _this select 2;
			_coef = 0.03 - (0.0001 * _i);
			_this setvectorup [_vx+(-_coef+random (2*_coef)),_vy+(-_coef+random (2*_coef)),_vz+(-_coef+random (2*_coef))];
			sleep (0.01 + random 0.01);	};};

auraeffect ={ 
Flare21 = "Smokeshellpurple" createVehicle position (vehicle player);
Flare22 = "Smokeshellyellow" createVehicle position (vehicle player);
Flare23 = "Smokeshellred" createVehicle position (vehicle player);
Flare24 = "Smokeshell" createVehicle position (vehicle player);
Flare25 = "Smokeshellblue" createVehicle position (vehicle player);
Flare26 = "Smokeshellgreen" createVehicle position (vehicle player);
Flare27 = "Smokeshellorange" createVehicle position (vehicle player);
Flare28 = "Smokeshell" createVehicle position (vehicle player);
Flare29 = "Smokeshellblue" createVehicle position (vehicle player);
Flare30 = "Smokeshellyellow" createVehicle position (vehicle player);
Flare21 attachTo [(vehicle player),[0,0,0]];
Flare22 attachTo [(vehicle player),[0,-1,0]];
Flare23 attachTo [(vehicle player),[0,1,0]];
Flare24 attachTo [(vehicle player),[1,0,0]];
Flare25 attachTo [(vehicle player),[-1,0,0]];
Flare26 attachTo [(vehicle player),[0,0,1]];
Flare27 attachTo [(vehicle player),[0,-0.5,0]];
Flare28 attachTo [(vehicle player),[0,0.5,0]];
Flare29 attachTo [(vehicle player),[0.5,0,0]];
Flare30 attachTo [(vehicle player),[-0.5,0,0]];
sleep 5;
deletevehicle Flare21;
deletevehicle Flare22;
deletevehicle Flare23;
deletevehicle Flare25;
deletevehicle Flare24;
deletevehicle Flare26;
deletevehicle Flare27;
deletevehicle Flare28;
deletevehicle Flare29;
deletevehicle Flare30;};

switch (_multikill) do{
    
	case 2:{chocoland globalChat format["%1 - doubleKill",_nameplayer];player say "multi2";
               };
        case 3:{	chocoland globalChat format["%1 - TRIPLEKILL",_nameplayer];
                        player say "multi3";
                        player spawn quake;};
        case 4:{chocoland globalChat format["%1 - QUADRAKILL",_nameplayer];
                        player say "multi4";
                        player spawn quake;};
        case 5:{
			chocoland globalChat format["%1 - PENTAKILL",_nameplayer];
                        player say "multi5";
                        player spawn quake;
                          []spawn auraeffect;};
        case 6:{chocoland globalChat format["%1 is Legendary",_nameplayer];
                        player say "multi6";
                        player spawn quake;};
        case 7:{chocoland globalChat format["%1 is LEGENDARY",_nameplayer];
                        player say "multi6";
                        player spawn quake;};

};