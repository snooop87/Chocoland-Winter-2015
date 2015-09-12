

//	@file Version: 1.0
//	@file Name: addToCart.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:13
//	@file Args:

#include "dialog\gunstoreDefines.sqf";
disableSerialization;

	_price = 0;
	_checkWeapon = "";
	_checkAmmo = "";
	_checkAccessor = "";
	// Grab access to the controls
	_dialog = findDisplay gunshop_DIALOG;
	_gunlist = _dialog displayCtrl gunshop_ammo_list;
	_cartlist = _dialog displayCtrl gunshop_cart;
	_totalText = _dialog displayCtrl gunshop_total;

	//Get Selected Item
	_selectedItem = lbCurSel _gunlist;
	_itemText = _gunlist lbText _selectedItem;
	//Check Items Price
        _weapon =[];
		
	{_Name = getText (configFile >> "CfgMagazines" >> (_x select 0) >> "displayName");
        if(_itemText == _name) then { _price = _x select 1; _weapon = _x select 0;} }forEach ammoArray;
	gunStoreCart = gunStoreCart + _price;
	_totalText CtrlsetText format["Total: $%1", gunStoreCart];
	_cartlist lbAdd format["%1",_itemText];
        loadout= loadout +[_weapon];