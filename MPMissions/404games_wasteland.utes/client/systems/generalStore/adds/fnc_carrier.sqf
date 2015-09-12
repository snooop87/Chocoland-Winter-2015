_pos1= [];
TitleText ["Requesting Carrier on following coordinates. click to Spawn( dont spawn on island or over other Carriers!)","Plain Down"];
openMap true;
onMapSingleClick "_pos1= [_pos select 0,_pos select 1,0];openMap false; onMapSingleClick ''; true;";
sleep 4;
TitleText ["Coordinates received.your Carrier is on the way.","Plain Down"];
_pos= _pos1;_center = createCenter sideLogic;  _group = createGroup _center; 
LHD = _group createUnit ["LOGIC",[_pos select 0,_pos select 1, -0.9] , [], 0, ""];
LHD call BIS_EW_fnc_createLHD;