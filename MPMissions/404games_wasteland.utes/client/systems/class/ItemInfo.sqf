

#include "dialog\classDefines.sqf";

disableSerialization;

//Initialize Values
_build_type = "";
_price = 0;
_picture = "";
// Grab access to the controls
_dialog = findDisplay class_DIALOG;
_itemlist = _dialog displayCtrl class_item_list;
_itemlisttext = _dialog displayCtrl class_money;
_vehiclepicture = _dialog displayCtrl class_vehicle_pic;
//Get Selected Item
_selectedItem = lbCurSel _itemlist;
_itemText = _itemlist lbText _selectedItem;
_itempicture ctrlSettext _picture;
//_itemlisttext ctrlSetText format ["Price: 0$"];	
//_vehiclepicture ctrlSettext _picture;
//Check Items Price
{if(_itemText == _x select 0) then{ 
	//_type = _x select 2;
	_price = _x select 1;
      
}}forEach donatorClassrray;