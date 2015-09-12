// new marker script triggers in near 1000meters for all basecores and exchanger
setGroupIconsVisible [true, true];
function_marker = {
     _cores = nearestObjects [player, ["RU_Pilot"], 10000];
     {
     clearGroupIcons group _x;(group _x) addGroupIcon ["x_art"];
     if( _x getvariable"name" == "Server")then {(group _x) setGroupIconParams [[0, 1, 0, 1],format ["%1 Core (%2$)",_x getvariable"name", servercore2 getvariable"wallet"], 0.4, true];}
   else{
     (group _x) setGroupIconParams [[0, 1, 0, 1],format ["%1`s Core (%2$)",_x getvariable"name",_x getvariable["wallet",2]], 0.4, true];};
     }foreach _cores;
     // chocoking tax >1
    {clearGroupIcons group _x;_name = name _x;      if(_name == (chocoking select 0)AND  _x distance player <= ((chocoking select 1) * 20))then {     (group _x) addGroupIcon ["x_art"]; (group _x) setGroupIconParams [[0, 1, 0, 1],format ["KingTag (%1 m)",floor(_x distance player)], 0.4, true];  }          }foreach playableunits;
    };

while{walked} do {
    []call function_marker;
    
        sleep 5;};
        functionMarker = false;
waituntil{functionMarker};
execVM"client\functions\createMarkers.sqf";