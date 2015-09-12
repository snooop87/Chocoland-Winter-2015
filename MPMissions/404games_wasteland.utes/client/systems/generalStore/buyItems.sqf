
#include "dialog\genstoreDefines.sqf";
disableSerialization;

if(genStoreCart > (player getVariable "cmoney")) exitWith {hint "You do not have enough money"};
if(gunStoreCart < 0)exitwith {hint " ERROR <0"};
closeDialog 0;
// Check if mutex lock is active.
if(mutexScriptInProgress) exitWith {
	chocoland globalChat "ERROR: ALREADY PERFORMING ANOTHER ACTION!";
};	

// Check if player is alive.
if(!(alive player)) exitWith {
	chocoland globalChat "ERROR: YOU ARE CURRENTLY BUSY.";
};	

mutexScriptInProgress = true;


//Initialize Values
_playerMoney = player getVariable "cmoney";

_size = 0;

// Grab access to the controls
_dialog = findDisplay genstore_DIALOG;
_cartlist = _dialog displayCtrl genstore_cart;
_totalText = _dialog displayCtrl genstore_total;
_totalText2 = _dialog displayCtrl genstore_total2;
_playerMoneyText = _Dialog displayCtrl genstore_money;
_size = lbSize _cartlist;

if(_size <= 0) exitWith {
	mutexScriptInProgress = false;
	hint "You have no items in the cart"
};

for [{_x=0},{_x<=_size},{_x=_x+1}] do
{
	_itemText = _cartlist lbText _x;
    switch (_itemText) do {
        
        case "Water": {
          chocoland globalChat"Water added. look in your PlayerMenu";
                player setVariable["water",(player getVariable "water") + 1,true];	
            
        };
        
		case "Canned Food":	{chocoland globalChat"Canned Food added. look in your PlayerMenu";
           
                player setVariable["canfood",(player getVariable "canfood") + 1,true];
          
        };
        
		case "Medical Kit": {chocoland globalChat"MedicalKit added. look in your PlayerMenu";
            
                player setVariable["medkits",(player getVariable "medkits") + 1,true];
           
        };
        case "HealMeKit": {chocoland globalChat"you're fully healed.";
            
                player setdamage 0;
           
        };
        
		case "Ultimate Kit": {
            
                player setVariable["repairkits",1,true]; chocoland globalChat"RepairKit added. look in your PlayerMenu";
           
        };
        
        case "Jerry Can (Full)": {chocoland globalChat"Jerry Can added. look in your PlayerMenu";
           
                player setVariable["fuelFull",1,true];
           
        };
        
        case "Jerry Can (Empty)": {
               player setVariable["fuelEmpty",(player getVariable "fuelEmpty") + 1,true];
          
        };
        case "Spawn Beacon": {chocoland globalChat"Spawn Beacon added. look in your PlayerMenu";
            player setVariable["spawnBeacon",(player getVariable "spawnBeacon") + 1,true];
           
        };
        case "ChocoBomb": {chocoland globalChat"ChocoBomb added. look in your PlayerMenu";
               player setVariable["camonet",(player getVariable "camonet") + 1,true];
           
        };
   case "ClassChanger": { [] execVM "client\systems\class\loadclass.sqf";
waitUntil { sleep 1;classSelect==1;};};
   case "Bet your Money/chocos": {[] execVM "client\systems\generalStore\adds\betchoco.sqf";  };
          case "Rainbow Flares":{[] execVM "client\systems\generalStore\adds\rainbow.sqf";}; 
 case "get 2 random Weapons":{[] execVM "client\systems\generalStore\adds\fnc_rweapon.sqf";};  
   case "get random Vehicle":{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
     case "let all players know your Name":{[] execVM "client\systems\generalStore\adds\fnc_name.sqf";};  
   case "Dance on the Island":{[] execVM "client\systems\generalStore\adds\fnc_dance.sqf";};  
    case "weather":{[] execVM "client\systems\generalStore\adds\fnc_environment.sqf";}; 
    case "Teleport to maplocation":{hint "Click on map to teleport";onMapSingleClick "vehicle player setPos [_pos select 0,_pos select 1,0]; onMapSingleClick ''; true;";openMap true;};
     case "Satelite Camera":{[] execVM "client\systems\generalStore\adds\fnc_sattelite.sqf";};
        case "Delete Object":{chocoland globalChat format["watch your MouseWheel Commands, delete house dont work"];playerdeleteObject = player addAction[('<t color=''#17FF41''>' + ('mark the object on your Aim, Press on this') +  '</t>'),'addons\proving_ground\fnc_delete_1.sqf'];};
    case "Spectate Player":{[] execVM "client\systems\generalStore\adds\fnc_spectate.sqf";};
    case "receive reinforcement":{(group(leader group player)) createUnit [typeOf player,getpos player,[],0.1,"FORM"] setSkill 1;};
    case "Infinite Ammunition 1m":{[] execVM "client\systems\generalStore\adds\fnc_ammo_1.sqf";};
   case "Cow for the Win":{[3]execVM "client\systems\generalStore\adds\beanimal.sqf";};
   case "Vehicle SpeedMode":{[]execVM "addons\proving_ground\fnc_speed.sqf";};
      case "Terror Rabid":{[2]execVM "client\systems\generalStore\adds\beanimal.sqf";};
       case "be a Seagull":{[]execVM "client\chocofunc\seagull.sqf";};
     case "Goat gives Milk":{[5]execVM "client\systems\generalStore\adds\beanimal.sqf";};
      case "No Recoil + Random Vehicle":{[] execVM "client\systems\generalStore\adds\fnc_recoil.sqf";};
        case "1ClickBase":{chocoland globalChat format["watch your MouseWheel Commands"];playerbaseObject = player addAction[('<t color=''#17FF41''>' + ('Build Here My 1 ClickBase') +  '</t>'),'client\systems\generalStore\adds\fnc_base.sqf'];};
     case  "CC`s Castle Base":{chocoland globalChat format["watch your MouseWheel Commands"];playerbaseObject = player addAction[('<t color=''#17FF41''>' + ('Build Here My CC Castle') +  '</t>'),'client\systems\generalStore\adds\fnc_bcastle.sqf'];};
  case "Baseshield 1m":{chocoland globalChat format["watch your MouseWheel Commands"];playershieldObject = player addAction[('<t color=''#17FF41''>' + ('Spawn here The HyperShield') +  '</t>'),'client\systems\generalStore\adds\fnc_shield.sqf'];};
      case "Invisible 3min":{};
      case "Infinite Ammunition 3m":{[] execVM "client\systems\generalStore\adds\fnc_ammo_2.sqf";};
   case "strike":{[] execVM "client\systems\generalStore\adds\fnc_airstrike.sqf";};
    case "carrier":{[] execVM "client\systems\generalStore\adds\fnc_carrier.sqf";};
    case "Kill yourself?":{[] execVM"client\systems\generalStore\adds\fnc_credits.sqf";};
    case "Kill Player":{[]execVM "client\systems\generalStore\adds\fnc_playerk.sqf";};
     case "Hen":{[1]execVM "client\systems\generalStore\adds\beanimal.sqf";};
     case "Nofog for me":{[1]execVM "client\systems\generalStore\adds\wheater.sqf";};
     case "Fog for ALL":{[2]execVM "client\systems\generalStore\adds\wheater.sqf";};
     case "Sunny Weather for me":{[3]execVM "client\systems\generalStore\adds\wheater.sqf";};
     case "BAD Weather for ALL":{[4]execVM "client\systems\generalStore\adds\wheater.sqf";};
     case "Day for me":{[5]execVM "client\systems\generalStore\adds\wheater.sqf";};
     case "Day for ALL":{[6]execVM "client\systems\generalStore\adds\wheater.sqf";};
     case "Night for me":{[7]execVM "client\systems\generalStore\adds\wheater.sqf";};
     case "Night for ALL":{[8]execVM "client\systems\generalStore\adds\wheater.sqf";};
    case "German shepherd":{[4]execVM "client\systems\generalStore\adds\beanimal.sqf";};
case "Mothership" :{chocoland globalChat format["watch your MouseWheel Commands"];playershieldObject = player addAction[('<t color=''#17FF41''>' + ('Spawn here my MotherShip') +  '</t>'),'client\systems\generalStore\adds\ship.sqf'];};
};};

player setVariable["cmoney",_playerMoney - genStoreCart,true]; _y= player getvariable["highscore",[0,0,0,0,0,0,0,0]]; player setvariable["highscore",[_y select 0,_y select 1,_y select 2,_y select 3,(_y select 4)+genStoreCart,_y select 5,_y select 6, _y select 7],false];
      []call savePlayer;

_playerMoneyText CtrlsetText format["Cash: $%1", player getVariable "cmoney"];

genStoreCart = 0;

_totalText CtrlsetText format["Total: $%1", genStoreCart];
lbClear _cartlist;
mutexScriptInProgress = false;