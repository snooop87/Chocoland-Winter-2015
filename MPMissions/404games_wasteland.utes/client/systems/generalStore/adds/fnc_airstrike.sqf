
hint "Click on map for your AirStrike";openMap true;
onMapSingleClick "_pos1= [_pos select 0,_pos select 1,0]; onMapSingleClick ''; true;";

sleep 3;
openMap false;
_mark = "SmokeShellRed" Createvehicle _pos1;

_m1 moveInDriver AirSupport;lChat" Your AirStrike is on the way";
sleep 1;
//_pos1= [_pos select 0,_pos select 1,0];
_ma2 = creategroup west;

_playerPos = getPos player;
_playerPos =[(_playerPos select 0),(_playerPos select 1),(_playerPos select 2)+500];
AirSupport = createvehicle ["A10_US_EP1", _playerPos, [], 70, "FLY"];

_m1 = _ma2 createUnit ["US_Soldier_Pilot_EP1",_playerPos, [], 0, "form"];

_m1 setRank "COLONEL";
_m1 moveInDriver AirSupport;

_wp = _ma2 addWaypoint [ _pos1,0];
_wp1 =  _ma2 addWaypoint [_pos1,0];
_wp2 = _ma2 addWaypoint [ _pos1,0];
_wp3 = _ma2 addWaypoint [ _pos1,0];
_poss = [_pos1 select 0,_pos1 select 1,10];
[_ma2, 1] setWaypointType "MOVE";
[_ma2, 1] setWaypointSpeed "FULL";
[_ma2, 1] setWaypointBehaviour "CARELESS";
[_ma2, 1] setWaypointStatements ["true","AirSupport flyInHeight 200;"];
_poss = getposATL AirSupport;
_bomb = "Bo_GBU12_LGB" createVehicle _poss;
[_ma2, 2] setWaypointType "SAD";
[_ma2, 2] setWaypointSpeed "FULL";
[_ma2, 2] setWaypointBehaviour "CARELESS";
[_ma2, 2] setWaypointStatements ["true", "AirSupport flyInHeight 200;"];
_poss = getposATL AirSupport;
_bomb = "Bo_GBU12_LGB" createVehicle _poss;
[_ma2, 3] setWaypointType "SAD";
[_ma2, 3] setWaypointSpeed "FULL";
[_ma2, 3] setWaypointBehaviour "CARELESS";
[_ma2, 3] setWaypointStatements ["true", "AirSupport flyInHeight 200;"];
_poss = getposATL AirSupport;
_bomb = "Bo_GBU12_LGB" createVehicle _poss;
[_ma2, 4] setWaypointType "CYCLE";
[_ma2, 4] setWaypointSpeed "FULL";
[_ma2, 4] setWaypointBehaviour "CARELESS";
[_ma2, 4] setWaypointStatements ["true", "AirSupport flyInHeight 200;"];
_poss = getposATL AirSupport;
_bomb = "Bo_GBU12_LGB" createVehicle _poss;
sleep 300;

deleteVehicle AirSupport;
DeleteGroup _ma2;