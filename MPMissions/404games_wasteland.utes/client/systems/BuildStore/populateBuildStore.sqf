

#include "dialog\buildstoreDefines.sqf";
disableSerialization;
_switch = _this select 0;

// Grab access to the controls
_dialog = findDisplay buildshop_DIALOG;
_itemlisttext = _dialog displayCtrl buildshop_item_TEXT;
_itempicture = _dialog displayCtrl buildshop_item_pic;
_itemlist = _dialog displayCtrl buildshop_item_list;								
_itemInfo = _dialog displayCtrl buildshop_item_Info;

lbClear _itemlist;
_itemlist lbSetCurSel -1;
_itempicture ctrlSettext "";
_itemlisttext ctrlSettext "";
_itemInfo ctrlSetStructuredText parseText "";
switch(_switch) do 
{
	case 0: // Weapons button pressed.
	{
            {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];
            } forEach BuildStoreArray;
        };
        case 1: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        case 2: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        case 3: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        case 4: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        case 5: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        case 6: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        case 7: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        case 8: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        
        case 9: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        case 10: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
        case 11: // Weapons button pressed.
	{
            {if (_x select 3 == _switch) then {_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];};
            } forEach BuildStoreArray;
        };
};
