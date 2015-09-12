

//	@file Version: 1.0
//	@file Name: removeFromCart.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:13
//	@file Args:

#include "dialog\genstoreDefines.sqf";
disableSerialization;


	//Initialize Values
	_price = 0;
        	_price2 = 0;
	_checkWeapon = "";
	_checkAmmo = "";
	_checkAccessor = "";

	//Grab access to the controls
	_dialog = findDisplay genstore_DIALOG;
	_cartlist = _dialog displayCtrl genstore_cart;
	_itemlist = _dialog displayCtrl genstore_item_list;
	_totalText = _dialog displayCtrl genstore_total;
_totalText2 = _dialog displayCtrl genstore_total2;

	_switchText = Ctrltext _buysell;

	//Get selected item.
	_selectedItem = lbCurSel _cartlist;
	_itemText = _cartlist lbText _selectedItem;

	
		{
        	if(_x select 0 == _itemText) then
            {
                _price = _x select 4;
               
                
            };    
        }forEach generalStore;
	
	genStoreCart = genStoreCart - _price;
        
	_totalText CtrlsetText format["MoneyTotal: $%1", genStoreCart];

	//Remove selected item.
	_cartlist lbDelete _selectedItem;
