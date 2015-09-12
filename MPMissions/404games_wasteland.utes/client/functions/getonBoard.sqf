
//	@file Version: 1.0
//	@file Name: releaseVIP.sqf
//	@file Author: [404] Costlyy
//	@file Created: 30th May 13
//	@file Args:
_currObject = nearestObject [player, "Land_LHD_1"];
_pos = getposasl _currObject;
_pos = [(_pos select 0),(_pos select 1),8.601];
//_pos =[1367.88,1011.16,8.601];
player setPos _pos;



