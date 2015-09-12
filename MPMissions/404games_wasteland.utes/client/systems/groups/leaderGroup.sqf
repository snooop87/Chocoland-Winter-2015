

#define groupManagementDialog 55510
#define groupManagementGroupList 55512

disableSerialization;

private["_dialog","_playerListBox","_groupInvite","_target","_index","_playerData","_check","_unitCount"];

_dialog = findDisplay groupManagementDialog;
_groupListBox = _dialog displayCtrl groupManagementGroupList;

_index = lbCurSel _groupListBox;
_playerData = _groupListBox lbData _index;
_check = 0;

//Check selected data is valid            			
{if (str(_x) == _playerData) then {_target = _x;_check = 1;};}forEach playableUnits;

//Checks
if(_target == player) exitWith {chocoland globalChat "Server: You are the leader already!";};
if (_check == 0) exitWith {chocoland globalChat "Server: You must select someone for leader!";};

group player selectLeader _target;

chocoland globalChat format["Server: %1 is now the leader of the group!",name _target];