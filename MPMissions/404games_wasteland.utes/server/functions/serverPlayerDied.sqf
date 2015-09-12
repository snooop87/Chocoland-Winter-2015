//	@file Version: 1.0
//	@file Name: serverPlayerDied.sqf
//	@file Author: [404] Pulse, [404] Costlyy
//	@file Created: 20/11/2012 05:19

if(!X_Server) exitWith {};
private["_newObject"];
_player = _this select 0;
_killer = _this select 1;
_score = score _player;
if(_score > 0)then{
	_player addScore -_score;
};