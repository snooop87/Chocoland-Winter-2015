

_private=["_camonet"];
_camonet=_this select 0;
//_camonet = (nearestobjects [getpos player, ["Explosive"],  5] select 0);
_randomPos = getpos _camonet;
_baseToDelete = nearestObjects [_randomPos, ["All"], 22];      { if(typeof _x == "Explosive")then{deleteVehicle _x;}; } forEach _baseToDelete;

titleText [format["\n ChocoBomb activated  you have 3 seconds,RUN !!"], "PLAIN DOWN", 0];
sleep 4;
titleText [format["\n 2 seconds"], "PLAIN DOWN", 0];
sleep 4;
titleText [format["\n 1 second"], "PLAIN DOWN", 0];
sleep 3;
//deleteVehicle _camonet;
_bounty=player getvariable["bounty",1];


 if(_bounty >= 0)exitwith{
      if(_bounty >= 3)exitwith{
           if(_bounty >= 6)exitwith{
                if(_bounty >= 10)exitwith{
                    
 _bomb = "Bo_GBU12_LGB" createVehicle _randomPos;

_baseToDelete = nearestObjects [_randomPos,["All"],20];
{deleteVehicle _x;} forEach _baseToDelete;player setVariable ["bounty",0,false]; };

_bomb = "Sh_122_HE" createVehicle [_randomPos select 0,_randomPos select 1, 0];

_baseToDelete = nearestObjects [_randomPos,["All"],10];
{deleteVehicle _x;} forEach _baseToDelete;player setVariable ["bounty",0,false]; };

//
_bomb = "R_80mm_HE" createVehicle [_randomPos select 0,_randomPos select 1, 0];
_baseToDelete = nearestObjects [_randomPos,["All"],6];
{deleteVehicle _x;} forEach _baseToDelete;player setVariable ["bounty",0,false]; };

//
_bomb = "R_80mm_HE" createVehicle [_randomPos select 0,_randomPos select 1, 0];

_baseToDelete = nearestObjects [_randomPos,["All"],1];
{deleteVehicle _x;} forEach _baseToDelete;player setVariable ["bounty",0,false]; };

 






