if(!X_Server) exitWith {};
private ["_count","_pos","_mapside","_xCord","_yCord","_obj","_moneyCount", "_smoke"];

_moneyCount = 350;
for "_i" from 1 to _moneyCount do
    {
    //GREAT THX to Viba and KiloSwiss =D
     _mapside = Round (random 2);
     if(_mapside == 1) then 
     {
          _xCord = Round (random 2000) + 2436.33;
          _yCord = Round (random 1140) + 3501.65;
          _pos = [_xCord, _yCord,0.0014];
     }
     else 
     {
         _xCord = Round (random 1550)+3197.88;
         _yCord = Round (random 1375)+ 2857;
         _pos = [_xCord,_yCord, 0.0014];
     };

    //Now create Object
    _obj = "EvMoney" createVehicle _pos;
    _obj setpos (getpos _obj);
};
diag_log format["WASTELAND SERVER - %1 Money Spawned",_moneyCount];