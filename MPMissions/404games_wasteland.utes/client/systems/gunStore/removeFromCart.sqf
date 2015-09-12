

//	@file Version: 1.0
//	@file Name: removeFromCart.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:13
//	@file Args:

#include "dialog\gunstoreDefines.sqf";
disableSerialization;

if (local player) then {

	//Initialize Values
	_price = 0;
     	_checkWeapon = "";
	_checkAmmo = "";
	_checkAccessor = "";
_weapon ="";
	//Grab access to the controls
	_dialog = findDisplay gunshop_DIALOG;
	_cartlist = _dialog displayCtrl gunshop_cart;
	_totalText = _dialog displayCtrl gunshop_total;

	//Get selected item.
	_selectedItem = lbCurSel _cartlist;
	_itemText = _cartlist lbText _selectedItem;

	{_weapon = configFile >> "cfgWeapons" >> (_x select 1);_name = getText(_weapon >> "displayName");
        if(_itemText == _name) then { _price = _x select 2; _weapon = _x select 1; } }forEach weaponsArray;
	{_Name = getText (configFile >> "CfgMagazines" >> (_x select 0) >> "displayName");
        if(_itemText == _name) then { _price = _x select 1; _weapon = _x select 0;} }forEach ammoArray;
	{ _weapon = configFile >> "cfgWeapons" >> (_x select 0);_name = getText(_weapon >> "displayName");
        if(_itemText == _name) then { _price = _x select 1; _weapon = _x select 0; } }forEach accessoriesArray;
        
	gunStoreCart = gunStoreCart - _price;

	_totalText CtrlsetText format["Total: $%1", gunStoreCart];

	//Remove selected item.
	_cartlist lbDelete _selectedItem;
        loadout= loadout -[_weapon];
};