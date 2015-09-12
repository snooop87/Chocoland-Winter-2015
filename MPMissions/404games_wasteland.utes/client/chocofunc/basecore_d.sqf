

_private =[_switch,_money2,_range,_object];
_switch = _this select 3;
_object =0;
switch (_switch) do
{ 
 case 1:{ _object ="Misc_cargo_cont_tiny"};
 case 2:{ _object ="TK_GUE_WarfareBUAVterminal_EP1"};
 case 3:{ _object ="USMC_WarfareBAircraftFactory"};
};

 _currObject = getPos player nearestObject _object; 
 _npc = getPos player nearestObject "RU_Pilot";
 _money = _npc getvariable["wallet",0];
 if (player distance _currObject < 10) then {mutexScriptInProgress =true;
       _currObject setVariable ["basecore",0, true];
		_totalDuration = 8;
		_unlockDuration = _totalDuration;
		_iteration = 0;
                _stringEscapePercent = "%";
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		for "_iteration" from 1 to _unlockDuration do {
                   if(!mutexScriptInProgress)exitwith{hint "chanceled";mutexScriptInProgress =false ;};
                    if(player distance _currObject > 10) exitWith {  mutexScriptInProgress =false ;
                          2 cutText ["Object destroy failed, you too far away...", "PLAIN DOWN", 1];
                           _currObject setVariable ["basecore",1, true];
                           };
            if (!(alive player)) exitWith {
				2 cutText ["Object unlock failed, you are dead...", "PLAIN DOWN", 1];
                              _currObject setVariable ["basecore",1, true];mutexScriptInProgress =false ;};
            if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then {
                player switchMove "AinvPknlMstpSlayWrflDnon_medic";
            };
			_unlockDuration = _unlockDuration - 1;
		    _iterationPercentage = floor (_iteration / _totalDuration * 100);
			2 cutText [format["basecore delete %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
		    sleep 1;
			if (_iteration >= _totalDuration) exitWith {
		        sleep 1;
                _currObject setVariable ["basecore",0, true];
               player setVariable["cmoney",(player getvariable["cmoney",0]) + _money,true];
                deletevehicle _currObject;
                deletevehicle _npc;
                titleText [format["\n+ you got %1 $ for Destroy BaseCore", _money], "PLAIN DOWN", 0];
                mutexScriptInProgress =false;
                }; 
		};
		player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon";      
      
       };