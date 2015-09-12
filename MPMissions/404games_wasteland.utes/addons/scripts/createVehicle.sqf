

// database spawn
_test =player getVariable"saveVehicle";
if(isNil "vehicleSave") then{
    if(!(isnil "_test"))then{
  player playmove "AinvPknlMstpSlayWrflDnon";
closeDialog 0;
sleep 3;
_dir = getdir player;
_pos = getPos player;
_pos = [(_pos select 0)+20*sin(_dir),(_pos select 1)+20*cos(_dir),100];  
vehicleSave = createvehicle [_test,_pos,[],0,"CAN_COLLIDE"];
_veh = vehicleSave;
_veh setpos _pos;
_veh setdir _dir+270;
_veh setVelocity [0, 0.1, 0];
player playmove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon";
_veh allowdamage false;
 hint format ["your vehicle spawned in the Sky"]; 
vehicleSave = objNull; 
vehicleSave1  = objNull;
player setVariable["saveVehicle",[],true];
	
	
_Parachute = createVehicle ["ParachuteBigWest_EP1",_pos,[], 0,"FLY"];
_Parachute setPos _pos;
_Parachute setVelocity [0, 1, 0];
_veh attachTo [_Parachute,[0,0,-1.5]];
 while {(getPos _veh select 2) > 2 and (alive _Parachute)and  (alive _veh)}do
               {_Parachute setVelocity [(velocity player select 0)*3, (velocity player select 1)*3, (velocity _Parachute select 2)*1.07];sleep 0.1;};
deTach _veh;
sleep 5;
deleteVehicle _Parachute;
_veh allowdamage true;
chocoland globalChat "Hangar is Empty"; 
};};

// client spawn
if(!isNull vehicleSave)then 
{
player playmove "AinvPknlMstpSlayWrflDnon";
closeDialog 0;
sleep 3;
_dir = getdir player;
_pos = getPos player;
_pos = [(_pos select 0)+20*sin(_dir),(_pos select 1)+20*cos(_dir),100];

_nic = [nil, vehicleSave, "per", rHideobject, false] call RE; 
deTach vehicleSave;
_veh = vehicleSave;
_veh setpos _pos;
_veh setdir _dir+270;
_veh setVelocity [0, 0.1, 0];
player playmove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon";
_veh allowdamage false;
 hint format ["%1 spawned in the Sky", vehicleSave1]; 
vehicleSave = objNull; 
vehicleSave1  = objNull;
player setvariable["saveVehicle",[],true];
	
_Parachute = createVehicle ["ParachuteBigWest_EP1",_pos,[], 0,"FLY"];
_Parachute setPos _pos;
_Parachute setVelocity [0, 1, 0];
_veh attachTo [_Parachute,[0,0,-1.5]];
while {(getPos _veh select 2) > 2 and (alive _Parachute)and  (alive _veh)}do
               {_Parachute setVelocity [(velocity player select 0)*3, (velocity player select 1)*3, (velocity _Parachute select 2)*1.07];sleep 0.1;};
deTach _veh;
sleep 5;
deleteVehicle _Parachute;
_veh allowdamage true;
chocoland globalChat "Hangar is Empty"; 
   
} else { chocoland globalChat "Hangar is Empty, you cannot Spawn your Vehicle"; };

