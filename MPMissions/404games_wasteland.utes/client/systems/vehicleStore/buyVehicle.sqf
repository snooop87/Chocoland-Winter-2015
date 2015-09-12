#include "dialog\vehstoreDefines.sqf";
disableSerialization;

pchelabqm={
	 closeDialog 0;
	dir=getdir player; _pos = getposatl player;_pos = [(_pos select 0)+5*sin(dir),(_pos select 1)+5*cos(dir),(_pos select 2)];_Parachute = "Pchela1T" createVehicle _pos; _Parachute setPos _pos;_Parachute setdir ( getdir player);
	_pos= [(_pos select 0),(_pos select 1), (_pos select 2)];_Parachute2 = "Pchela1T" createvehicle _pos;
	_Parachute setPos _pos;_Parachute2 attachTo [_Parachute,[0,1.5,0]];_Parachute3 = "Chukar" createvehicle _pos;
	_Parachute setPos _pos;_Parachute3 attachTo [_Parachute,[1,0,0.7]];  _Parachute4 = "Chukar" createvehicle _pos; _Parachute setPos _pos;_Parachute4 attachTo [_Parachute,[-1,0,0.7]];  
	player moveindriver _Parachute;  player assignAsDriver _Parachute;_Parachute addWeapon "Bomblauncher";_Parachute addMagazine "6Rnd_GBu12_AV8B";
};
adminplane= {
	[]call savePlayer;closeDialog 0;
	dir=getdir player; _pos = getposatl player;_pos = [(_pos select 0)+5*sin(dir),(_pos select 1)+5*cos(dir),(_pos select 2)];_Parachute = "MV22" createVehicle _pos; _Parachute setPos _pos;_Parachute setdir ( getdir player);_pos= [(_pos select 0)+30,(_pos select 1), (_pos select 2)];_Parachute2 = "C130J" createvehicle _pos; _Parachute setPos _pos;_Parachute2 attachTo [_Parachute,[0,-12,0]];_Parachute2 = "C130J" createvehicle _pos; _Parachute setPos _pos;_Parachute2 attachTo [_Parachute,[0,12,0]];
_Parachute addWeapon "Gau12";_Parachute addMagazine "300Rnd_25mm_GAU12";_Parachute addWeapon "Bomblauncher";_Parachute addMagazine "6Rnd_GBu12_AV8B";
 _Parachute addWeapon "CMFlareLauncher";_Parachute addMagazine "120Rnd_CMFlare_Chaff_Magazine";player moveindriver _Parachute;  player assignAsDriver _Parachute;
	};
_playerMoney = player getVariable "cmoney";

_size = 0;
_price = 0;
_test = false;
_ObjectsInArea = [];

_dialog = findDisplay vehshop_DIALOG;
_cartlist = _dialog displayCtrl vehshop_cart;
_totalText = _dialog displayCtrl vehshop_total;
_playerMoneyText = _Dialog displayCtrl vehshop_money;
_size = lbSize _cartlist;
_itemlist = _dialog displayCtrl vehshop_item_list;

hintsilent "Checking Purchase";
closeDialog 0;
   dir = getdir player;
   pos = getPosatl player;
   pos = [(pos select 0)+20*sin(dir),(pos select 1)+20*cos(dir),(pos select 2)+150];
   on = false;

//Buy
for [{_x=0},{_x<=_size},{_x=_x+1}] do
{
	_selectedItem = lbCurSel _itemlist;
	_itemText = _itemlist lbText _selectedItem;

{
    _vehicle = (configFile >> "CfgVehicles" >> (_x select 1));
_displayName = getText(_vehicle >> "displayName");
if(_itemText == "CowCycle") exitWith { if(1000 < _playerMoney) then { player setVariable["cmoney",_playerMoney - 1000,true];closeDialog 0;[] exeCVM"client\chocofunc\cowcycle.sqf";}else{chocoland globalchat"you dont have enough money";}};
if(_itemText == "TeamPchela") exitWith { if(10000 < _playerMoney) then {player setVariable["cmoney",_playerMoney - 10000,true];[] call pchelabqm;}else{chocoland globalchat"you dont have enough money";}};
if(_itemText == "AdminPlane") exitWith {if(100000 < _playerMoney) then {player setVariable["cmoney",_playerMoney - 100000,true];[] call adminplane;}else{chocoland globalchat"you dont have enough money";}};
if(_itemText == _displayName) then{ 
  
	
			_price = _x select 0;
                   //  _price =floor (_price * ((100 - (chocoking select 1 ) ) /100));
                        if(_price < (player getVariable "cmoney")) then {
			player setVariable["cmoney",_playerMoney - _price,true];
                         if(_price >50000) then{ []call savePlayer;};
_y= player getvariable["highscore",[0,0,0,0,0,0,0,0]]; _y set [4,(_y select 4)+_price];player setvariable["highscore",_y,false];
                    
hintsilent "Vehicle bought - watch the sky";
closeDialog 0;
 _spawn = createVehicle [(_x select 1),pos,[], 0,"CAN_COLLIDE"];
_spawn setDir dir;
_spawn allowdamage false;
clearMagazineCargoGlobal _spawn;
clearWeaponCargoGlobal _spawn;
_spawn setVariable["R3F_LOG_disabled", false, true];
_Parachute = "ParachuteBigWest_EP1" createVehicle position _spawn;
_Parachute setPosatl (getPosatl _spawn);
 _Parachute setVelocity [0, 3, 1];
  _spawn attachTo [_Parachute,[0,0,-1.5]];
_smoke = "smokeShellblue" createVehicle position _spawn;
_smoke setPos (getPos _spawn);
_smoke attachTo [_Parachute,[0,0,-1.5]];

 chocoland globalChat"use W,A,S,D to controll your Parachute, you can Rotate with mousewheel";
 paraId = player addAction[('<t color=''#FF33CC''>' + ('Rotate Vehicle 90°') +  '</t>'),'client\functions\on.sqf'];
 while {(getPos _spawn select 2) > 2 and (alive _Parachute)and  (alive _spawn)}
do{_Parachute setVelocity [(velocity player select 0)*3, (velocity player select 1)*3, (velocity _Parachute select 2)*1.09];
if(on)then {_spawn setdir ((getDir _spawn) + 90);
rotate9 = [rotate9, _spawn];
publicVariable "rotate9";on = false;};
sleep 0.1;
};
player removeaction paraId;
on = false;
deTach _spawn;
sleep 3;

deleteVehicle _Parachute;
_spawn setDamage (0.00);
_spawn allowdamage true;
               
} else {hintsilent "you dont have enough money";};}}forEach vehicleStoreArray;};
