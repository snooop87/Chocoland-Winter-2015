private ["_skin","_skin2","_type", "_ar", "_oldUnit", "_newUnit", "_dummyUnit", "_dummyGroup"];
//_skin = "Hen";
_skin2=_this select 0;
_skin = "";
_MMarray1 = ["Hen","Rabbit","Cow04","Pastor","Goat"];
_skin = _MMarray1 call BIS_fnc_selectRandom;
if(_skin2 == 1)then {_skin = "Hen"};
if(_skin2 == 2)then {_skin = "Rabbit"};
if(_skin2 == 3)then {_skin = "Cow04"};
if(_skin2 == 4)then {_skin = "Pastor"};
if(_skin2 == 5)then {_skin = "Goat"};
RESCUE= true;
skinText = typeOf(player);

[] call statsave;

 _oldUnit = player;
_type = _skin;

_ar = [weapons _oldUnit, magazines _oldUnit, rank _oldUnit, score _oldUnit, group _oldUnit, getPos _oldUnit, (leader _oldUnit) == _oldUnit, vehicleVarName _oldUnit];
 
_dummyGroup = createGroup (side _oldUnit);

_dummyUnit = (_ar select 4) createUnit [_skin, [0, 0, 0], [], 0, "NONE"]; // Join in the old group incase there was only 1 member

[_oldUnit] join _dummyGroup;

 newUnit = _dummyGroup createUnit [_skin, _ar select 5, [], 0, "NONE"];
sleep 0.3;
setPlayable newUnit;
addSwitchableUnit newUnit;
selectPlayer newUnit;
newUnit setRank (_ar select 2);
newUnit addScore (_ar select 3);

sleep 0.3;
if (_ar select 7 != "") then {
    newUnit setVehicleInit format["this setVehicleVarName '%1'; %1 = this", _ar select 7];
    processInitCommands;
};
 [newUnit] join (_ar select 4);
removeSwitchableUnit newUnit;
 
sleep 0.3;
  deleteVehicle  _dummyUnit;
 oldUnit =_oldUnit;
 oldUnit setpos [2101.75,4314.7,0.00130653];
 //publicVariable "oldUnit";// Might have to remote execute this to be successfull in MP
 _nic = [nil, oldUnit, "per", rHideobject, true] call RE; 
sleep 0.3;
 if (_ar select 6) then { (group newUnit) selectLeader newUnit};

player setVariable["basecore",0,true];
player setVariable["basecore",0,true];
 //player playmove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon";
player addweapon "ItemMap";
player addweapon "ItemCompass";newUnit addweapon "ItemWatch";
newUnit addEventHandler ["Respawn", {[this]execVM"client\clientEvents\onRespawnAnimal.sqf"}];
newUnit addEventHandler ["Killed", {[this] execVM "server\functions\bomb_midair.sqf";}];
bombId = player addAction[('<t color=''#FF33CC''>' + ('Blew Up') +  '</t>'),'client\chocofunc\animalbomb.sqf'];
newUnit setvariable["animal",true,true];
//[newUnit]execVM"client\functions\animalMoney.sqf";
 RESCUE= true;newunit spawn {waituntil{!alive _this}; RESCUE= false;};
 walked =false;
player setVariable["animal",true,true];
chocoland globalChat" Reserve to Player MouseWheel action will come in 30 seconds";
savePlayer = {};
sleep 30;revId = player addAction[('<t color=''#219eff''>' + ('Reverse to Player') +  '</t>'),'client\systems\generalStore\adds\reverseskin.sqf'];
