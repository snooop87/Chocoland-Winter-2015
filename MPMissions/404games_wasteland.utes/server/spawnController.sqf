if(!isServer) exitWith {};
_pos =[3632,3611,0];
_randomPos = [2103.3293,4300.7207,0];
while {true} do
{ 
 _range= 0;
sleep 3600;

{ if(typeof _x == "CraterLong")then {deletevehicle _x};
    if ((damage _x) >=0.8 )then{ deleteVehicle vehicle _x;}else{_x setdamage 0;};
   if( _x isKindOf "Air" || _x iskindof "LandVehicle" || _x isKindOf "Static") then { _x setfuel 1;_x setVehicleAmmo 1; [_x] call randomWeapons;};
    if((getpos _x) distance _randompos < 250)then {if(typeof _x !="ProtectionZone_Ep1")then{deleteVehicle _x;};};   
    if(typeof _x =="WeaponHolder")then {deletevehicle _x;};
    
}count allMissionObjects "All";
_hint = parseText format ["<t align='center' color='#17FF41' shadow='2' size='1.75'>ChocoSupply</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='#FFFFFF' size='1'>all stuff Repaired,Rearmed got new weapons and new spawned objects + 0.2 Multiplier for ALL</t><br/>"];
[nil,nil,rHINT,_hint] call RE;
chocostring = "[]call countingbounty;[]call countingbounty;";publicvariable"chocostring";    
      
{
     _bubblepos = [_x,[1, 500] call BIS_fnc_randomNum,[1, 359] call BIS_fnc_randomNum] call BIS_fnc_relPos;
     _bubblepos call compile preprocessfilelinenumbers"server\spawning\spawningObjects.sqf";
     _bubblepos call compile preprocessfilelinenumbers "server\spawning\spawningVehicles.sqf";
     _bubblepos call compile preprocessfilelinenumbers"server\spawning\spawningAnimals.sqf";
     _bubblepos call compile preprocessfilelinenumbers"server\spawning\spawningchocokills.sqf";
     _bubblepos call compile preprocessfilelinenumbers"server\spawning\spawningMoney.sqf";	
} forEach playableUnits; 
[]call dbSave;
};
   
