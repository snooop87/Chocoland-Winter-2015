terminate playerMenuHandle;

playerMenuHandle = [] spawn {
	waituntil {!isnull player};
        x1 = player;
	private ["_veh"];
	while {alive player} do {
             
		waituntil {vehicle player == player};

                if (!isnil "_veh") then {_veh removeaction playerMenuId;_veh removeaction saveVehId};
playerMenuId = player addAction [format ["<t color='#FF6600'>%1</t>", "Player Menu"], "client\systems\playerMenu\init.sqf",[],-10,false,false,"","local player"];
playerWeaponId = player addAction [format ["<t color='#219eff'>%1</t>", "ParaStore(F5)"], "client\systems\menu\loadmenu.sqf",[],-9,false,false,"","local player"];

waituntil {vehicle player != player};
player removeaction playerMenuId;
player removeaction playerWeaponId;
_veh = vehicle player;
               
saveVehId = _veh addAction [format ["<t color='#FF9900'>%1</t>", "Save Vehicle"], "addons\scripts\saveVehicle.sqf",[],-10,false,false,"","local player"];
if(rainbow==1) then {player removeAction playerbaseObject; playerbaseObject = _veh addAction[('<t color=''#17FF41''>' + ('give me Rainbow Power') +  '</t>'),'client\systems\FunStore\adds\rainbow.sqf'];};
};
};
