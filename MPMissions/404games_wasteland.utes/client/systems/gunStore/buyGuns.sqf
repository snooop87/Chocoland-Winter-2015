#include "dialog\gunstoreDefines.sqf";
disableSerialization;

if( gunStoreCart > (player getVariable "cmoney")) exitWith {hint "You do not have enough money"};
if(gunStoreCart < 1)exitwith {hint " ERROR <0"};

// Check if mutex lock is active.
if(mutexScriptInProgress) exitWith {
	chocoland globalChat "ERROR: ALREADY PERFORMING ANOTHER ACTION!";
};	

// Check if player is alive.
if(!(alive player)) exitWith {
	chocoland globalChat "ERROR: YOU ARE CURRENTLY DEAD.";
    closeDialog 0;
};	
dropweapon = "WeaponHolder" createVehicle getPos player; 
dropweapon setPos [getPos player select 0,getPos player select 1,getPos player select 2];
mutexScriptInProgress = true;
//delete switch weapon
_fnc_drop_weapon = {_weapon = _this select 0;_weaponCfg = (configFile >> "cfgWeapons" >> _weapon);_type = getNumber(_weaponCfg >> "type");	if (_type in [1,2,4,5]) then {		{_cWepType = [getNumber(configFile >> "cfgWeapons" >> _x >> "type")];
if (_cWepType select 0 in [1,5]) then {_cWepType = [1,5];};		if (_type in _cWepType) then {
player removeWeapon _x;    dropweapon addWeaponCargo [_x,1];		_current_magazines = magazines player;		_compatible_magazines = getArray(configFile >> "cfgWeapons" >> _x >> "magazines");
{if (_x in _compatible_magazines) then {player removeMagazine _x;    dropweapon addMagazineCargo [_x,1];		};} forEach _current_magazines;	};} forEach (weapons player);};
	player addWeapon _weapon;	player selectWeapon _weapon;};
private ["_name"];

//Initialize Values
_playerMoney = player getVariable "cmoney";
_playerbounty=  player getvariable["bounty",1];
_size = 0;
_price = 0;
// Grab access to the controls
_dialog = findDisplay gunshop_DIALOG;
_cartlist = _dialog displayCtrl gunshop_cart;
_totalText = _dialog displayCtrl gunshop_total;
_playerMoneyText = _Dialog displayCtrl gunshop_money;
_size = lbSize _cartlist;
_pos = getposatl player;
for [{_x=0},{_x<=_size},{_x=_x+1}] do
{
_itemText = _cartlist lbText _x;
//0 = Primary, 1 = SideArm, 2= Secondary, 3= HandGun Mags, 4= MainGun Mags, 5= Binocular, 7=Compass Slots
			_playerSlots = [player] call BIS_fnc_invSlotsEmpty;
			
			{_weapon = configFile >> "cfgWeapons" >> (_x select 1);_name = getText(_weapon >> "displayName");
				if(_itemText == _name) then
				{
					_class = _x select 1;
					_weapon = (configFile >> "cfgWeapons" >> _class);
					_type = getNumber(_weapon >> "type");
					
                    switch (_type) do {
                    
                    	case 1: { //Main Rifle
                    
                        	if((_playerSlots select 0) >= 1) then { 
								player addWeapon _class;
                                                                player selectWeapon _class;
							} else {  [_class]call _fnc_drop_weapon;};
                        };
                        
                        case 2: { //Side Arm
                        	
                            if((_playerSlots select 1) >= 1) then {
								player addWeapon _class;
                                                                player selectWeapon _class;
							} else {[_class]call _fnc_drop_weapon;};
                        };
                        
                        case 4: { //Rocket launcher
                        	
                            if((_playerSlots select 2) >= 1) then {
								player addWeapon _class;
                                                                player selectWeapon _class;
							} else {[_class]call _fnc_drop_weapon;};
                        };
                        
                        case 5: { //Machinegun
                        
                            if(((_playerSlots select 2) >= 1) AND ((_playerSlots select 0) >= 1)) then {
								player addWeapon _class;
                                                                player selectWeapon _class;
                                                                
							} else {[_class]call _fnc_drop_weapon;};
                        };
                    };          
				};   
                                 		
}forEach weaponsArray;

			{_Name = getText (configFile >> "CfgMagazines" >> (_x select 0) >> "displayName");
				                                    if(_itemText == _Name) then {
					_class = _x select 0;
					_mag = (configFile >> "cfgMagazines" >> _class);
					_type = (getNumber(_mag >> "type"));
					
					//Check how many main mags you have
                    
                    switch (_type) do {
                    
                    	case 256: {
                        	
								player addMagazine _class;
						
                        };
                        
                        case 512: {
                        	
								player addMagazine _class;
							
                        };
                        
                        case 768: {
                        	
								player addMagazine _class;
							
                        };
                        
                        case 1024: {
                        	
								player addMagazine _class;
							
                        };
                        
                        case 1280: {
                        	
								player addMagazine _class;
							
                        };
                        
                        case 1536: {
                        	
								player addMagazine _class;
							
                        };
                        
                        case 16: {
                        	
								player addMagazine _class;

							
                        };
                    };
				};
			}forEach ammoArray;

			{ _weapon = configFile >> "cfgWeapons" >> (_x select 0);_name = getText(_weapon >> "displayName");
	            if(_itemText == _name) then {
					_class = _x select 0;
					if(_class == "Binocular_Vector" OR _class== "NVGoggles") then {
						if((_playerSlots select 5) >= 1) then {
							player addWeapon _class;
                                                        
						} else {
							{
                            	if(_x select 0 == _class) then { _price = _x select 1; _name = _x select 0; };
                            }forEach accessoriesArray;
                            
							gunStoreCart = gunStoreCart - _price;
							hint format["You do not have space for this item %1",_name];
						};
					} else {
						player addWeapon _class;
                                                
					};
				};
            }forEach accessoriesArray;
		};
//gunStoreCart =  floor (_price * ((100 - (chocoking select 1 ) ) /100));
	player setVariable["cmoney",_playerMoney - gunStoreCart,true];
                 _y= player getvariable["highscore",[0,0,0,0,0,0,0,0]];_y set [4,(_y select 4)+gunStoreCart]; player setvariable["highscore",_y ,false];
     _playerMoneyText CtrlsetText format["Cash: $%1", player getVariable "cmoney"];
		gunStoreCart = 0;
                reload player;
		_totalText CtrlsetText format["Total: $%1", gunStoreCart];
		lbClear _cartlist;
	
mutexScriptInProgress = false;