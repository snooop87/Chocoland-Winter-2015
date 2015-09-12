_i =cursortarget;locking=false;_totalDuration= 1;
_array= ["Land_HouseB_Tenement","Land_A_TVTower_Base"
,"Land_A_TVTower_Base","Land_A_BuildingWIP","Land_Destroyer"
,"Land_A_CraneCon","Land_A_CraneCon","Land_Barn_Metal"
,"Land_Barn_Metal","Land_Ind_Pec_01","Land_Ind_Mlyn_01","HeliHCivil"
];
if((typeof _i) in _array)exitwith {systemchat" you cannot decode this object";};
if(_i getvariable"objectLocked")then {locking=true;_totalDuration= 2};
Dcooldown = true;
_currObject = _i;
_totalDuration = floor (_totalDuration + ((player distance _i) / 20));
_price = floor(random 5000);
_random=0;
_choco= player getvariable["cmoney",0];
_unlockDuration = _totalDuration +1;
_iteration = 0;
_stringEscapePercent = "%";
player switchMove "AinvPknlMstpSlayWrflDnon_medic";
_totalDuration = _totalDuration +1;
for "_iteration" from 1 to _unlockDuration do {
//SCHLEIFE

    if (!(alive player)) exitWith {// If the player dies, revert state.
    2 cutText ["Object decode failed, you are dead...", "PLAIN DOWN", 1];
    Dcooldown = false; };
                               
    if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { 
    player switchMove "AinvPknlMstpSlayWrflDnon_medic";
    };
//_unlockDuration = _unlockDuration - 1;
_iterationPercentage = floor (_iteration / _totalDuration * 100);
2 cutText [format["decode object %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
sleep 0.9;
    if (_iteration >= _totalDuration) exitWith {
    
    Dcooldown = false; 
    sleep 0.3;
    
    if (locking)then {// 20% abfrage
       _random = floor (random 100);
       if(_random < 20)then {
           deletevehicle _currObject;
         player setvariable["cmoney",_choco + _price,true]; 
         titleText[format["\n Object Decoded.You got %1 $",_price], "PLAIN DOWN", 0];
         _random = floor (random 100);
         if (_random > 90)then {[]call countingbounty;};
            } else { titleText[format["\n Object Decoding failed.Please Try again"], "PLAIN DOWN", 0];
                };
    }
    else {// ungelockt
         deletevehicle _currObject;
         player setvariable["cmoney",_choco + _price,true]; 
         titleText[format["\n Object Decoded.You got %1 $",_price], "PLAIN DOWN", 0];
         _random = floor (random 100);
         if (_random > 90)then {[]call countingbounty;};
    };
   
    
   };};
player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon";      

