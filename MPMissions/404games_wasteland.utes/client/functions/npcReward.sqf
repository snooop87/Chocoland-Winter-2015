
// THANKS to KiloSwiss  scripty by KiloSwiss
private["_action","_victim","_reward","_punishment","_killerMoney","_newMoney"];

_action = _this select 0;
_victim = _this select 1;
_reward = _this select 2;


switch (_action) do{
		
	case "reward" :{
_reward = count playableunits * 100;
_reward = round (_reward * (player getvariable"bounty"));
player setVariable["cmoney", (player getVariable "cmoney")+ _reward, true];
titleText [format["\n+ %1 $ for killing %2",_reward, name _victim], "PLAIN DOWN", 0];
	};
};