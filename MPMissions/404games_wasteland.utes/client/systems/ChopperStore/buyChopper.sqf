multiobjects= 0;
#include "dialog\chopstoreDefines.sqf";
disableSerialization;
_playerMoney = player getVariable "cmoney";
_size = 0;
_price = 0;
_ObjectsInArea = [];
_dialog = findDisplay chopshop_DIALOG;
_cartlist = _dialog displayCtrl chopshop_cart;
_totalText = _dialog displayCtrl chopshop_total;
_playerMoneyText = _Dialog displayCtrl chopshop_money;
_size = lbSize _cartlist;
_itemlist = _dialog displayCtrl chopshop_item_list;
_array = ["L39_TK_EP1","AV8B","Su34","F35B","Su25_CDF","Su39","A10","AV8B2"];
hintsilent "Checking Purchase";

   _dir = getdir player;
   _pos = getPosATL player;
     _pos = [(_pos select 0),(_pos select 1),(_pos select 2)+150];
on = false;

for [{_x=0},{_x<=_size},{_x=_x+1}] do
{
	_selectedItem = lbCurSel _itemlist;
	_itemText = _itemlist lbText _selectedItem;
	{  
_vehicle = (configFile >> "CfgVehicles" >> (_x select 1));
_displayName = getText(_vehicle >> "displayName"); 

            if(_itemText == _displayName) then{
           
          	_price = _x select 0;
                      //_price =floor (_price * ((50 - (chocoking select 1 ) ) /100));
                        if(_price < _playerMoney) then {
                            closeDialog chopshop_DIALOG;
                            
			player setVariable["cmoney",_playerMoney - _price,true];
                         if(_price >50000) then{ []call savePlayer;};
                         _y= player getvariable["highscore",[0,0,0,0,0,0,0,0]];_y set [4,(_y select 4)+_price]; player setvariable["highscore",_y,false];
       			_playerMoneyText CtrlsetText format["Cash: $%1", _playerMoney - _price];
			hintsilent "Chopper bought - watch the sky";
                        closeDialog 0;
                        _spawn = createVehicle[(_x select 1),_pos,[], 0,"CAN_COLLIDE"];
                     /* if((_x select 1) in _array)then {
                       {_spawn removeWeapon _x}forEach weapons _spawn;};*/
			_spawn setDir _dir;
                     _spawn allowdamage false;
			clearMagazineCargoGlobal _spawn;
			clearWeaponCargoGlobal _spawn;
			_spawn setVariable["R3F_LOG_disabled", false, true];
              _Parachute = "ParachuteBigWest_EP1" createVehicle position _spawn;
		_Parachute setPosATL (getPosATL _spawn);
                _Parachute setVelocity [0, 3, 0];
                 _spawn attachTo [_Parachute,[0,0,-1.5]];
		_smoke = "smokeShellblue" createVehicle position _spawn;
		_smoke setPos (getPos _spawn);
		_smoke attachTo [_Parachute,[0,0,-1.5]];
              
            chocoland globalChat"use W,A,S,D to controll your Parachute, you can Rotate with mousewheel";
              paraId = player addAction[('<t color=''#FF33CC''>' + ('Rotate Vehicle 90°') +  '</t>'),'client\functions\on.sqf'];
               while {(getPos _spawn select 2) > 2 and (alive _Parachute)and  (alive _spawn)}do
               {_Parachute setVelocity [(velocity player select 0)*3, (velocity player select 1)*3, (velocity _Parachute select 2)*1.07];
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


		} else {
			hintsilent "you dont have enough money";
		};
	}}forEach ChopperStoreArray;
};

