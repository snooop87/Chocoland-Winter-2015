

//	@file Version: 1.0
//	@file Name: weaponInfo.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:13
//	@file Args:

#include "dialog\genstoreDefines.sqf";
disableSerialization;

//Initialize Values
_weap_type = "";
_picture = "";
_price = 0;

// Grab access to the controls
_dialog = findDisplay genstore_DIALOG;
_itemlist = _dialog displayCtrl genstore_item_list;
_itemlisttext = _dialog displayCtrl genstore_item_TEXT;
_itemlisttext2 = _dialog displayCtrl genstore_item_TEXT2;
_picture = _dialog displayCtrl genstore_item_pic;
_buysell = _dialog displayCtrl genstore_buysell;
_itemInfo = _dialog displayCtrl genstore_item_Info;
_chocomoney = _dialog displayCtrl genstore_totalChoco;

//Get Selected Item
_selectedItem = lbCurSel _itemlist;
_itemText = _itemlist lbText _selectedItem;

//Check which state we want to be in.

{
	    if(_itemText == _x select 0) then{
			_price = _x select 4;
                        _price2 = _x select 5;
                          if(_x select 0 == "Fog for ALL" || _x select 0 == "BAD Weather for ALL" || _x select 0 == "Night for ALL")then {
                        _chocos = player getvariable["cmoney",0];
                        _min1 = Round(_chocos /10);
                        _price = _price + _min1;
                        };
                       if(_x select 0 == "Bet your Money")then {
                        _chocos = player getvariable["cmoney",0];
                        _price = _chocos;
                        };
                        if(_x select 0 == "Spawn Beacon")then {
                        _chocos = player getvariable["cmoney",0];
                        _min1 = Round(_chocos /100);
                        _price = _price + _min1;
                        };
                        if(_x select 0 == "Ultimate Kit")then {
                        _chocos = player getvariable["cmoney",0];
                        _min1 = Round(_chocos /100);
                        _price = _price + _min1;
                        };
                         if(_x select 0 == "Teleport to maplocation")then {
                        _chocos = player getvariable["cmoney",0];
                        _min1 = Round(_chocos /100);
                        _price = _price + _min1;
                        };
            _picLink = _x select 3;
            _picture ctrlSetText _picLink;
            _itemInfo ctrlSetStructuredText parseText ((_x select 2));
             _price=[_price] call fnc_number;
			_itemlisttext ctrlSetText format ["Money: $%1", _price];
                      
		}
	}forEach generalStore;
