if (isServer) then {_id = PlayerCDeath spawn serverPlayerDied;};
_player = (_this select 0) select 0;
PlayerCDeath = [_player];publicVariable "PlayerCDeath";
_killer = (_this select 0) select 1;
_distance = _player distance _killer;
_kbounty= _killer getvariable ["bounty",1];
_pbounty= _player getvariable ["bounty",1];
if(gunner (vehicle _killer) == _killer)then{
_kbounty= (gunner (vehicle _killer)) getVariable ["bounty",1];};
_reward = 1000 max floor(_kbounty *_pbounty *10000);
_player setPos [2104,4301,0];
    if(chocoland getvariable["killbounty",0] > 1)then{
if((random 1) >0.98)then{
_reward = _reward + (chocoland getvariable"killbounty");
chocostring= format["if(%1 == player)then{player setvariable[""cmoney"",(player getvariable[""cmoney"",0])+ %2,true];};taskhint [""+ %3$ Bounty Reward: %4"", [0, 1, 0, 1], ""taskdone""];",_killer, _reward,[_reward] call fnc_number,name _killer];
publicvariable"chocostring";call compile chocostring;chocoland setvariable["killbounty",0,true];};};
_chocokingStr= "";
if (isPlayer _killer && _Player != _Killer) then {
    if ((chocoking select 1) != 0)then {
        _newReward =_reward * ((chocoking select 1)/100);_reward= _reward - _newReward;
        _chocokingStr = format[" - tax",_newReward,chocoking select 0];};
 if (_distance > (chocoland getvariable["ls",[0,"nobody"]]) select 0 && _distance < 3500)then{chocoland setvariable["ls",[_distance,name _killer],true]};
_string =format["%2 was killed by %1 over %4m (+%3$%5)",name _killer,name _player,[_reward]call fnc_number,floor _distance,_chocokingStr]; 
_string =format["chocoland globalchat ""%1"";if(player == (%2))then {[%3]call reward};"
,_string,
leader _killer,
_reward];
chocostring=_string;publicvariable"chocostring";call compile _string;
};
_y= _player getvariable"highscore";_y set [2,(_y select 2)+1]; _player setvariable["highscore",_y,false];
_player setVariable["basecore",0,false];

if(typeof _killer in ["Priest","Woodlander4","CIV_EuroMan02_EP1","CIV_EuroMan01_EP1","RU_Citizen1","Rocker1","Rocker2","Woodlander3"] && isplayer _player)then {
    _string =format["%2 was killed by %1 over %3m (npc)",name _killer,name _player,floor _distance]; 
_string =format["chocoland globalchat ""%1"";",_string];chocostring=_string;publicvariable"chocostring";call compile _string;
};
