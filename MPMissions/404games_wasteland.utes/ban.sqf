checkbanlist=1;
publicvariable"checkbanlist";
waitUntil {!isnil"banlist"};

if (puid in BANLIST)then { player globalchat "you have been Banned from CHOCOLAND ;
    contact to chocoland@heavensdelight.de ";
endMission "LOSER";};
