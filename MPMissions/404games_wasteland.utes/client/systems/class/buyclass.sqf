

#include "dialog\classDefines.sqf";
disableSerialization;
[]call statsave;
_size = 0;
_price = 0;
_ObjectsInArea = [];

// Grab access to the controls
_dialog = findDisplay class_DIALOG;
_cartlist = _dialog displayCtrl class_cart;
_totalText = _dialog displayCtrl class_total;
//_playerMoneyText = _Dialog displayCtrl class_money;
_size = lbSize _cartlist;
_itemlist = _dialog displayCtrl class_item_list;

hintsilent "Checking Purchase";
closeDialog class_DIALOG;
 dir = getdir player;
 pos = getPosatl player;

//Buy
for [{_x=0},{_x<=_size},{_x=_x+1}] do
{
	_selectedItem = lbCurSel _itemlist;
	_itemText = _itemlist lbText _selectedItem;
	{if(_itemText == _x select 0) then{
	if(0 <= 1) then {
			_skin =(_x select 1);
                        
private ["_type", "_ar", "_oldUnit", "_newUnit", "_dummyUnit", "_dummyGroup"];
_oldUnit = player;
_type = _skin;
_side =  side player;
_ar = [weapons _oldUnit, magazines _oldUnit, rank _oldUnit, score _oldUnit, group _oldUnit, getPos _oldUnit, (leader _oldUnit) == _oldUnit, vehicleVarName _oldUnit];
_dummyGroup = createGroup (side _oldUnit);
_dummyUnit = (_ar select 4) createUnit [_skin, [0, 0, 0], [], 0, "NONE"]; // Join in the old group incase there was only 1 member
[_oldUnit] join _dummyGroup;
 _newUnit = _dummyGroup createUnit [_skin, _ar select 5, [], 0, "NONE"];
sleep 0.3;
setPlayable _newUnit;
addSwitchableUnit _newUnit;
selectPlayer _newUnit;
 _newUnit setRank (_ar select 2);
_newUnit addScore (_ar select 3);
sleep 0.3;
if (_ar select 7 != "") then {
    _newUnit setVehicleInit format["this setVehicleVarName '%1'; %1 = this", _ar select 7];
    processInitCommands;
};
_group = createGroup _side;
 //[_newUnit] join (_ar select 4);
 
 [_newUnit] join (_group);
removeSwitchableUnit _newUnit;
sleep 0.3;
 { deleteVehicle _x } forEach [_oldUnit, _dummyUnit]; // Might have to remote execute this to be successfull in MP
 hintsilent "";
 //if (_ar select 6) then { (group _newUnit) selectLeader _newUnit };
 //_group = createGroup _side;
removeAllWeapons player;
removeAllitems player;
removeBackpack player;
player addweapon "ItemMap";
player addweapon "ItemCompass";
player addweapon "ItemWatch";
player playmove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon";
group player selectLeader _newUnit;
classselect =1;			//content
		} else {
			hintsilent "1";
		};
	}}forEach donatorClassrray;
};
[2,player]call statload;