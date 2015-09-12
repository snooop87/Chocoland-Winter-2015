
//	@file Version: 1.0
//	@file Name: vehicleManagement.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

#define vehicleManagementDialog 12000
#define vehicleManagementVehicleCount 12002
#define vehicleManagementCivButton 12007
#define vehicleManagementHeliButton 12008
#define vehicleManagementPlaneButton 12009
#define vehicleManagementTankButton 12010

disableSerialization;

private ["_start","_dialog","_vehicleCountText","_vehicleType","_vehicleCount","_uid","_vehicleCivBtn","_vehicleHeliBtn","_vehiclePlaneBtn","_vehicleTankBtn"];
_uid = puid;
if (_uid in admins) then {
	_start = createDialog "VehicleManagement";
	
	_dialog = findDisplay vehicleManagementDialog;
	_vehicleCountText = _dialog displayCtrl vehicleManagementVehicleCount;
	_vehicleCivBtn = _dialog displayCtrl vehicleManagementCivButton;
	_vehicleHeliBtn = _dialog displayCtrl vehicleManagementHeliButton;
	_vehiclePlaneBtn = _dialog displayCtrl vehicleManagementPlaneButton;
	_vehicleTankBtn = _dialog displayCtrl vehicleManagementTankButton;
	
	_uid = puid;
	_vehicleCount = 0;
	{
	    _vehicleType = Format["%1",typeOf _x];
		if(((_vehicleType isKindOf "LandVehicle") OR (_vehicleType isKindOf "Air")) AND !(_vehicleType isKindOf "StaticWeapon")) then {
	        _vehicleCount = _vehicleCount + 1;
		};
	}forEach vehicles;
	
	_vehicleCountText ctrlSetText format["Vehicles on Server: %1", _vehicleCount];
	
	
} else {
  exit;  
};
