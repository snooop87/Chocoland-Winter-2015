
//	@file Version: 1.0
//	@file Name: importValues.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

#define vehicleManagementDialog 12000
#define vehicleManagementListBox 12001
#define vehicleWeaponsText 12003
#define vehicleUsersText 12004
#define vehicleDamageText 12005
#define vehicleSpeedText 12006
#define playerMenuDialog 55500
#define playerMenuPlayerSkin 55501
#define playerMenuPlayerGun 55502
#define playerMenuPlayerItems 55503
#define playerMenuPlayerPos 55504
#define playerMenuPlayerList 55505
#define playerMenuPlayerObject 55507
#define playerMenuPlayerHealth 55508
#define playerMenuPlayerck 55522
#define playerMenuPlayerdonate 55599
#define playerMenusavevehicle 55600
#define playerMenusaveweapon 55601
#define playerMenudecode 55602
#define playerMenubasebuilder 55603
#define playerMenuattach 55606
#define playerMenuupgrades 55605
#define playerMenusavevehicle2 55607
disableSerialization;

private ["_index1","_type1","_dialog","_vehicleListBox","_weaponText","_userText","_damageText","_speedText","_data1"];
_uid = puid;
if (_uid in admins) then {
	_index1 = _this select 1;
	_type1 = _this select 0;
	
	_dialog = findDisplay vehicleManagementDialog;
	_vehicleListBox = _dialog displayCtrl vehicleManagementListBox;
	_weaponText = _dialog displayCtrl vehicleWeaponsText;
	_userText = _dialog displayCtrl vehicleUsersText;
	_damageText = _dialog displayCtrl vehicleDamageText;
	_speedText = _dialog displayCtrl vehicleSpeedText;
	_dialogPlayer = findDisplay playerMenuDialog;
	_skinText = _dialogPlayer displayCtrl playerMenuPlayerSkin;
	_currentGunText = _dialogPlayer displayCtrl playerMenuPlayerGun;
	_itemsText = _dialogPlayer displayCtrl playerMenuPlayerItems;
	_posText = _dialogPlayer displayCtrl playerMenuPlayerPos;
	_healthText = _dialogPlayer displayCtrl playerMenuPlayerHealth;
	_objectText = _dialogPlayer displayCtrl playerMenuPlayerObject;
	_playerListBox = _dialogPlayer displayCtrl playerMenuPlayerList;
	_currentbountyText = _dialogPlayer displayCtrl playerMenuPlayerck;
        _currentdonatorText = _dialogPlayer displayCtrl playerMenuPlayerdonate;
        _currentsavevehicleText = _dialogPlayer displayCtrl playerMenusavevehicle;
        _currentsaveweaponText = _dialogPlayer displayCtrl playerMenusaveweapon;
       _currentdecodeText = _dialogPlayer displayCtrl playerMenudecode;
       _currentbasebuilderText = _dialogPlayer displayCtrl playerMenubasebuilder;
        _currentattach = _dialogPlayer displayCtrl playerMenuattach;
       _currentupgrades = _dialogPlayer displayCtrl playerMenuupgrades;
       _currentsavevehicle2 = _dialogPlayer displayCtrl playerMenusavevehicle2;
	_inCar = ["No Passengers"];
	_driver = "No Driver";
	if (_type1 == 1) then {
	    _data1 = _vehicleListBox lbData _index1;
	    {
	        if (str(_x) == _data1) exitwith {
	           _weaponText ctrlSetText format["Weapons: %1",weapons _x];
	           _speedText ctrlSetText format["Speed: %1",speed _x];
	           if(!isnull driver _x) then
	           {
					_driver = name (driver _x);	    
	           };
	           {if(_driver != name _x) then{_inCar set [_forEachIndex, name _x];};}forEach crew _x; 
	           _userText ctrlSetText format["Users: %1 %2",_driver,_inCar];
	           _damageText ctrlSetText format["Damage: %1",damage _x];
	        };
	    } foreach vehicles;
	};
	
	if (_type1 == 2) then {
	    _data1 = _playerListBox lbData _index1;
	    {
	        if (str(_x) == _data1) exitwith {
	            _itemsText ctrlSetText format["Items: %1",weapons _x];
                    _test=[_x getVariable "cmoney"] call fnc_number;
	            _currentGunText ctrlSetText format["Money: %1", _test];
	            _skinText ctrlSetText format["Skin: %1",typeOf(_x)];
	            _posText ctrlSetText format["Position: %1",position _x];
	            _objectText ctrlSetText format["Slot: %1",_x];
	            _currentbountyText ctrlSetText format["chocos: %1",_x getVariable ["bounty",0]];
                    _currentdonatorText ctrlSetText format["Donator: %1",_x getVariable["donator",0]];
                    _currentbasebuilderText ctrlSetText format["basebuilder: %1",_x getvariable["basebuilder",0]];
                  
                    _currentsavevehicleText ctrlSetText format["savevehicle: %1",_x getVariable["saveVehicle",0]];
                    _currentsaveweaponText ctrlSetText format["saveweapon: %1",_x getVariable["chocopack",""]];
                    _currentdecodeText ctrlSetText format["decoder: %1",_x getVariable["decoder",0]];
                    _currentattach ctrlSetText format["attach: %1",_x getVariable["attach",0]];
                 //   _currentupgrades ctrlSetText format["upgrades: %1",_x getVariable"upgrades"];
                    _currentsavevehicle2 ctrlSetText format["saveVehicle2: %1",_x getVariable["saveVehicle2",0]];
	            //Calculate Health 0 - 100
				_decimalPlaces = 2;
				_health = damage _x;
				//_health = round (_health * (10 ^ _decimalPlaces)) / (10 ^ _decimalPlaces);
				_health = round(_health);
                                _health = 100 - (_health * 100);
	            
	            _healthText ctrlSetText format["Health: %1",_health];
	        };
	    } foreach playableUnits;
	};
} else {
  exit;  
};