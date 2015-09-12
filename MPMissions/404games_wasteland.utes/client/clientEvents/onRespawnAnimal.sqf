

//	@file Version: 1.0
//	@file Name: onRespawn.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

private["_player","_corpse","_town","_spawn","_temp"];
playerSetupComplete = false;
_corpse = _this select 1;
//_corpse removeAction bombId;
_corpse removeAction revId;
//newUnit removeAction bombId;
newUnit removeAction revId;
//player removeAction bombId;
player removeAction revId;
player addweapon "ItemMap";
player addweapon "ItemCompass";
player addweapon "ItemWatch";
player setPos [2101.75,4314.7,0.00130653];
execVM"client\systems\generalStore\adds\reverseskin.sqf";
true spawn client_respawnDialog;
waitUntil {respawnDialogActive};

while {respawnDialogActive} do {
	titleText ["", "BLACK OUT", 0.00001];
};
titleText ["", "BLACK IN", 1];
player enableSimulation true; 
playerSpawning = false;
