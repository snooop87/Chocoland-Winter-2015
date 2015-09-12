if(mutexScriptInProgress) exitWith {};
_totalDuration = 2;
_lockDuration = _totalDuration;
mutexScriptInProgress = true;

_moneyObject = (nearestobjects [getpos player, ["EvMoney"],  5] select 0);
for "_iteration" from 1 to _lockDuration do 
{	    	
	if(vehicle player != player) exitWith 
	{
		chocoland globalChat "You can't pick up money whilst in a car";
		mutexScriptInProgress = false;
        player switchMove "AinvPknlMstpSlayWrflDnon_medic";
      
	};
           if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { 
                player switchMove "AinvPknlMstpSlayWrflDnon_medic";
            };
        _lockDuration = _lockDuration - 1;
	sleep 1;
 
	if(player distance _moneyObject > 5) exitWith 
	{
		mutexScriptInProgress = false;
        _moneyObject setVariable ["owner", nil, true];
	};
				    
	if (_iteration >= _totalDuration) exitWith 
	{
            player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; 
            deleteVehicle _moneyObject;
            _money = count playableunits;
             _money = (_money * 1000);
             _money = round (_money * (player getvariable"bounty"));
             chocoland globalChat format["You have picked up %1$",_money];
             [_money]call chocokingMoney;[]call countingbounty;
            player setVariable["cmoney", (player getVariable "cmoney")+_money,true];
            mutexScriptInProgress = false;
	};      
	};     

