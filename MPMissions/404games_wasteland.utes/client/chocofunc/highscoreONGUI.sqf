
private["_v", "_gend"];

_v = _this select 0;
_test = "Money";
_gender = _v select 2;
_gend= "";
_value=[_v select 0] call fnc_number;
if( _gender == 0) then {_gend = "Kills"};
if( _gender == 1) then {_gend = "Streak"};
if( _gender == 2) then {_gend = "Deaths"};
if( _gender == 3) then {_gend = "Payed Money"};
if( _gender == 4) then {_gend = "Earned Money"};
if( _gender == 5) then {_gend = "Cleared Missions"};
if( _gender == 6) then {_gend = "Time played"};
if( _gender == 7) then {_gend = "Total Walked"};
_hint = parseText format ["%1 has the most %2 with %3:%2",_v select 1,_gend,_value,_test];
player setvariable ["ongui",_hint,true];
if(name player == (_v select 1)) then {
    _itemText = floor(random 35);
    switch (_itemText) do {
        
        case 1: {
          
                   []call countingbounty;  
            
        };
        
		case 2:	{
           
                  []call countingbounty;   []call countingbounty;
          
        };
        
		case 3: {
            
                 []call countingbounty;
           
        };
        
		case 4: {
            
                []call countingbounty;   []call countingbounty;  	
           
        };
        
        case 5: {
           
                  []call countingbounty;  
           
        };
        
        case 6: {
                 []call countingbounty;   []call countingbounty;   []call countingbounty;	
          
        };
        case 7: {
              []call countingbounty; 
           
        };
        case 8: {
                 []call countingbounty;
           
        };
 
        case 9:{[]call countingbounty;   player setVariable["cmoney",(player getVariable "cmoney") +100000,true];	 };
    
 
   case 10: {player setVariable["cmoney",(player getVariable "cmoney") +200000,true]; };
          case "Rainbow Flares":{[] execVM "client\systems\generalStore\adds\rainbow.sqf";}; 
    case 11:{player setVariable["cmoney",(player getVariable "cmoney") +300000,true];}; 
    
     case 12:{player setVariable["cmoney",(player getVariable "cmoney") +400000,true];}; 
   
    case 13:{player setVariable["cmoney",(player getVariable "cmoney") +500000,true];}; 
   
     case 14:{[] execVM "client\systems\generalStore\adds\fnc_rweapon.sqf";};  
   case 15:{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
   case 16:{[] execVM "client\systems\generalStore\adds\fnc_rweapon.sqf";};
   case 17:{[_payment] execVM "client\systems\generalStore\adds\fnc_name.sqf";};  
   case 18:{[_payment] execVM "client\systems\generalStore\adds\fnc_dance.sqf";};  
    case 19:{hint "Click on map to teleport";onMapSingleClick "vehicle player setPos [_pos select 0,_pos select 1,0]; onMapSingleClick ''; true;";openMap true;};
     case 20:{[_payment] execVM "client\systems\generalStore\adds\fnc_sattelite.sqf";};
        case 21:{chocoland globalChat format["watch your MouseWheel Commands, delete house dont work"];playerdeleteObject = player addAction[('<t color=''#17FF41''>' + ('mark the object on your Aim, Press on this') +  '</t>'),'addons\proving_ground\fnc_delete_1.sqf'];};
    case 22:{[_payment] execVM "client\systems\generalStore\adds\fnc_spectate.sqf";};
    case 23:{group player createUnit [typeOf player,getpos player,[],0.1,"FORM"] setSkill 1;};
    case 24:{[] execVM "client\systems\generalStore\adds\fnc_rweapon.sqf";};
   case 25:{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
      case 26:{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
     case 27:{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
      case 28:{[_payment] execVM "client\systems\generalStore\adds\fnc_recoil.sqf";};
      case 29:{chocoland globalChat format["watch your MouseWheel Commands"];playerbaseObject = player addAction[('<t color=''#17FF41''>' + ('Build Here My 1 ClickBase') +  '</t>'),'client\systems\generalStore\adds\fnc_base.sqf'];};
      case 30:{chocoland globalChat format["watch your MouseWheel Commands"];playershieldObject = player addAction[('<t color=''#17FF41''>' + ('Spawn here The HyperShield') +  '</t>'),'client\systems\generalStore\adds\fnc_shield.sqf'];};
     case 31:{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
    case 32:{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
     case 33:{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
    case 34:{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
case 35 :{[] execVM "client\systems\generalStore\adds\fnc_rvehicle.sqf";};
};
};
sleep 7;
player setvariable ["ongui","",true];
