
//  @file Version: 1.1
//  @file Name: spawnOnBeacon.sqf
//  @file Author: [404] Costlyy, Redshirt_Ensign
//  @file Created: 05/04/2013 2:00
//  @file Args: [int(0 = button 0 etc)]


_waituntil =0;
_players =1;
_players = count playableunits;
if ((player getvariable"beacon") == 1)then
{
    if(alive chocobeacon)then{
    closeDialog 0;
    respawnDialogActive = false;

   
    _players = round ( _players/ 4);
     if(_players <=1)then{_players = 1;};
     if(_players >=40)then{_players = 10;};
     _waituntil = _players;
    waituntil {sleep 1;_waituntil =_waituntil -1;
    2 cutText [format["spawning on choco beacon in %1 seconds",_waituntil], "PLAIN DOWN", 1];
    _waituntil==0};
    _pos = getposasl chocobeacon;
    player setposasl _pos;
    sleep 1;
}else{chocoland globalChat "something wrong with your beacon, pls relink"};
}else{chocoland globalChat "you dont have any linked Choco Beacon "};
