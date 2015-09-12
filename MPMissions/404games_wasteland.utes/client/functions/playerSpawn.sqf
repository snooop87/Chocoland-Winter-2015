playerSpawning = true;
townSearch = 0;
beaconSearch = 0;
doKickTeamKiller = false;
doKickTeamSwitcher = false;
titleText [" ","BLACK IN",7];
setdate[2020,10,10,14,10];
switch (SPAWNART) do {
         case 1: {
        [0] execVM "client\functions\spawnAction.sqf"};
        case 2: {
        [2] execVM "client\functions\spawnAction.sqf"};
        case 3: {
       execVM "client\functions\spawnOnBeacon.sqf"};
};
sleep 1;

player enableSimulation true;
if(loadgearable) then {     
[] execVM "client\chocofunc\AccountLoad.sqf";
};
