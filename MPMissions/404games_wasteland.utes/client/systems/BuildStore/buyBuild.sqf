#include "dialog\buildstoreDefines.sqf";
disableSerialization;
_switch = _this select 0;
if(_switch == 1 && (player getvariable["basebuilder",0]) == 0)exitwith {chocoland globalChat " you need Basebuilder to Multibuy objects"};
_fregata= {chocoland globalChat format["watch your MouseWheel Commands"];playerbaseObject = player addAction[('<t color=''#17FF41''>' + ('create Here My Fregata') +  '</t>'),'addons\scripts\createFregata.sqf'];};
_carrier= {chocoland globalChat format["watch your MouseWheel Commands"];playerbaseObject = player addAction[('<t color=''#17FF41''>' + ('create Here My Carrier') +  '</t>'),'addons\scripts\createCarrier.sqf'];};


_playerMoney = player getVariable ["cmoney",0];
_size = 0;
_price = 0;
_ObjectsInArea = [];

// Grab access to the controls
_dialog = findDisplay buildshop_DIALOG;
_cartlist = _dialog displayCtrl buildshop_cart;
_totalText = _dialog displayCtrl buildshop_total;
_playerMoneyText = _Dialog displayCtrl buildshop_money;
_size = lbSize _cartlist;
_itemlist = _dialog displayCtrl buildshop_item_list;

hintsilent "Checking Purchase";
//closeDialog buildshop_DIALOG;
 _dir = getdir player;
 _pos = getPosasl player;

if(_switch ==0)then {_pos = [(_pos select 0)+4*sin(_dir),(_pos select 1)+4*cos(_dir),(_pos select 2)+100];};
if(_switch ==1)then {_pos = [(_pos select 0)+6*sin(_dir),(_pos select 1)+6*cos(_dir),(_pos select 2)-0.1];};
//Buy
for [{_x=0},{_x<=_size},{_x=_x+1}] do
{
	_selectedItem = lbCurSel _itemlist;
	_itemText = _itemlist lbText _selectedItem;
	{if(_itemText == _x select 0) then{
	if(0 <= 1) then {
            _price = _x select 1;
            if(player getvariable["basebuider",0] == 1)then{_price = Round(_price /2);};
			 if(_switch ==1)then {_price = _price *2};
                    //   _price =floor (_price * ((100 - (chocoking select 1 ) ) /100));
                        if(_price > (player getVariable ["cmoney",0])) exitWith {hintsilent "You do not have enough money"};
                        player setVariable["cmoney",_playerMoney - _price,true];
                    if(_price >50000) then{ []call savePlayer;};
             if(_x select 2 == "fregata") exitWith {[] call _fregata;};
             if(_x select 2 == "carrier") exitWith {[] call _carrier;};
			_playerMoneyText CtrlsetText format["Cash: $%1", player getVariable "cmoney"];
                        _spawn = createVehicle [(_x select 2),_pos,[], 0,"CAN_COLLIDE"];
			_spawn setDir _dir;
                        _spawn setPosASL _pos;
				clearMagazineCargoGlobal _spawn;
				clearWeaponCargoGlobal _spawn;
			_spawn setVariable["R3F_LOG_disabled", false, true];
                        if(_switch == 0)then{
                            if((_x select 3) == 10)then {
   [_spawn]execVM"addons\R3F\R3F_LOG\objet_deplacable\deplacer.sqf";};
			hintsilent "Building bought - watch the sky";
                _Parachute = "ParachuteBigWest_EP1" createVehicle position _spawn;
		_Parachute setPosatl (getPosatl _spawn);
		_spawn attachTo [_Parachute,[0,0,-1.5]];
           
              while {(getPos _spawn select 2) > 2 }do
               {_Parachute setVelocity [(velocity player select 0)*3, (velocity player select 1)*3, (velocity _Parachute select 2)];
                sleep 0.1;
                 
        sleep 0.1;
};

		deTach _spawn;
		sleep 3;player removeaction paraId;
}else {
    if((_x select 3) == 10)then {
   [_spawn]execVM"addons\R3F\R3F_LOG\objet_deplacable\deplacer.sqf"; player setvariable["upgrades",1,true];
         };
    hintsilent "Building bought via Multibuy";};
if((_x select 2) == "Misc_cargo_cont_tiny") then 
{
    _spawn setVariable ["basecore",0, true];
};
if((_x select 2) == "TK_GUE_WarfareBUAVterminal_EP1") then 
{
    _spawn setVariable ["basecore",0, true];
   
};
if((_x select 2) == "USMC_WarfareBAircraftFactory") then 
{
    _spawn setVariable ["basecore",0, true];
   };

if(_switch == 0)then {_spawn setPos [(getPos _spawn select 0),(getPos _spawn select 1),0.0014];
    		
		sleep 15;
		deleteVehicle _Parachute;     }; 
                 _spawn setDamage (0.00);
		} else {
		hintsilent "There is another Building or player blocking the spawn point!";
		};
	}}forEach BuildStoreArray;
};
