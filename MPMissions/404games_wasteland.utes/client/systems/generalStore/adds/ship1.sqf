_array = ["RHIB2Turret","M119","ZU23_TK_EP1"];
_select = _this select 3 select 0;
//1 getin Mothership /2 change to GunnerSeat M119 /3 change to GunnerSeat Zu23 /4 Hide Mothership
switch (_select) do {
 case 1: {player moveindriver mothership1;  player assignAsDriver mothership1;};
 case 2: {player moveingunner mothership3;  player assignAsgunner mothership3;};
 case 3 : {player moveingunner mothership4;  player assignAsgunner mothership4;};
 case 4 : {deletevehicle mothership1;deletevehicle mothership2;deletevehicle mothership3;deletevehicle mothership4;};
};