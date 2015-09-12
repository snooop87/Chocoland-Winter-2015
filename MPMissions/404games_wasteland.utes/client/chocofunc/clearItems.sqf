 if(isnil"fix")then {fix= 1;};
 if(fix==1)then{fix =2;
 chocoland globalchaT"deleting all destroyed objects";
 _pos= getpos player;
 _objects = nearestObjects [_pos, ["ALL"], 300000];
 {   if ((damage _x) >=0.9 and (!isPlayer _x)) then { deleteVehicle _x; };}foreach _objects;
 chocoland globalchat"done.";sleep 10;fix =nil;
 }else {chocoland globalchat" Cooldown"};