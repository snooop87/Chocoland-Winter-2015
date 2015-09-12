_object = _this select 0;
claymorelimit = claymorelimit +1;

while {alive _object} do {
{if(_x distance _object < 3 && _x != player)then {
if(side player != side _x ||group player != group _x)then {
call compile format["player setvariable[""onGUI2"",""%1 detected"",false];", name _x];  
sleep 1;
player setvariable["onGUI2","Detonating",false];

_pos = getpos _object;
_obj="Bomb" createVehicle _pos;
_obj setpos _pos;
_Anade="M_Ch29_AT" createVehicle _pos;
sleep 0.5;
deletevehicle _obj;
deletevehicle _object;
deletevehicle _Anade;

//}

    }};    
sleep 1;
}foreach playableunits;
};
player setvariable["onGUI2","",false];
claymorelimit = claymorelimit -1;
