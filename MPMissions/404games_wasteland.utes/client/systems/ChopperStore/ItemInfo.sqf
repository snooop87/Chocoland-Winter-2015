#include "dialog\chopstoreDefines.sqf";

disableSerialization;

//Initialize Values

_price = 0;
_picture = "";
// Grab access to the controls
_dialog = findDisplay chopshop_DIALOG;
_itemlist = _dialog displayCtrl chopshop_item_list;
_itemlisttext = _dialog displayCtrl chopshop_money;

_vehiclepicture = _dialog displayCtrl chopshop_vehicle_pic;
//Get Selected Item
_selectedItem = lbCurSel _itemlist;
_itemText = _itemlist lbText _selectedItem;
_itemlisttext ctrlSetText format ["Price: 0$"];	
_vehiclepicture ctrlSettext _picture;

//Check Items Price
{  _vehicle = (configFile >> "CfgVehicles" >> (_x select 1)); 
    _displayName = getText(_vehicle >> "displayName");    if(isnil"_displayName")then {_displayName = _x select 1};
    if(_itemText == _displayName) then{ 

	_price = _x select 0;
	_picture = getText (configFile >> "cfgVehicles" >> _x select 1 >> "picture");
        _vehiclepicture ctrlSettext _picture;
        // _price=[floor (_price * ((100 - (chocoking select 1 ) ) /100))] call fnc_number;
_itemlisttext ctrlSetText format ["Price: %1$", _price];

}
}forEach ChopperStoreArray;
