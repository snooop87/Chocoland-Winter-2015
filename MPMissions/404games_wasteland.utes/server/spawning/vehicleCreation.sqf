
if(!X_Server) exitWith {};
private ["_marker","_cartype","_car","_num","_tipped","_carpos","_type","_townpos","_randomSTATIC","_statics"];
_statics= ["SearchLight_TK_EP1","WarfareBMGNest_PK_TK_EP1","Fort_Nest_M240","DSHkM_Mini_TriPod_TK_EP1","KORD_TK_EP1",
"BAF_GPMG_Minitripod_D","M2HD_mini_TriPod","M2StaticMG","BAF_L2A1_Minitripod_D","BAF_L2A1_Tripod_D","MK19_TriPod",
"AGS_TK_EP1","SPG9_TK_GUE_EP1","ZU23_Ins","Igla_AA_pod_TK_EP1","Stinger_Pod_US_EP1","BAF_GMG_Tripod_D","M252"];
_type = _this select 1;
_pos = _this select 0;
//Create Civilian Vehicle
if (_type == 0) then {
	//Car Initilization, Pick Car Type.
    _cartype = civilianVehicles select (random (count civilianVehicles - 1));
    _car = createVehicle [_cartype,_pos,[], 20,"None"];
    _car setpos [getpos _car select 0,getpos _car select 1,0];
_car setVariable["R3F_LOG_disabled", false, true];
	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;
	//Set Cars Attributes
    _car setFuel (0.50);
    _car setDamage (random 0.50);
    _car setDir (random 360);
	_car setVelocity [0,0,1];
    [_car] call randomWeapons;
[_car] call randomWeapons;
[_car] call randomWeapons;

};
//Create Military Vehicle
if (_type == 1) then {
	//Car Initilization, Pick Car Type.
    _cartype = militaryVehicles select (random (count militaryVehicles - 1));
    _car = createVehicle [_cartype,_pos, [], 30, "None"];
    _car setpos [getpos _car select 0,getpos _car select 1,0];
	_car setVariable["R3F_LOG_disabled", false, true];
    	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;
	//Set Cars Attributes
    _car setFuel (0.50);
    _car setDamage (random 0.50);
    _car setDir (random 360);
	_car setVelocity [0,0,1];
    [_car] call randomWeapons;
[_car] call randomWeapons;
[_car] call randomWeapons;
//Set authenticity
	
};

//Create Armed Military Vehicle
if (_type == 2) then {
	//Car Initilization, Pick Car Type.
    _cartype = armedMilitaryVehicles select (random (count armedMilitaryVehicles - 1));
    _car = createVehicle [_cartype,_pos, [], 30, "None"];
    _car setpos [getpos _car select 0,getpos _car select 1,0];
   _car setVariable["R3F_LOG_disabled", false, true];

	//Clear Cars Inventory
    clearMagazineCargoGlobal _car;
    clearWeaponCargoGlobal _car;

	//Set Cars Attributes
    _car setFuel (0.50);
    _car setDamage (random 0.50);
    _car setDir (random 360);
    _car setVehicleAmmo (random 0.90);
_car setVelocity [0,0,1];
[_car] call randomWeapons;
[_car] call randomWeapons;
[_car] call randomWeapons;
	
	
};
if(random 1 < 0.5)then{
_randomSTATIC = _statics select floor(random(count _statics));
 _car2 = createVehicle [_randomSTATIC,position player,[], 20,"None"];
 _car2 attachTo [_car,[
 0,
 0,
 (boundingBox _car select 0 select 2) - (boundingBox _car2 select 0 select 2) - (getPos _car select 2) + 2]
 ];
};