private [ "_case"];


//_skin = "Hen";
_case=_this select 0;
_name = name playeR;
switch (_case) do {
case 1 : { false execVM "client\functions\loadAtmosphere.sqf";3 setfog 0;};
case 2 :{{if(isPlayer _x)then { [nil,_x, "loc", rEXECVM, "client\systems\generalStore\adds\wheater_effect.sqf", 2, _name] call RE; };}foreach playableunits;};
case 3 : { false execVM "client\functions\loadAtmosphere.sqf";3 setovercast 0;};
case 4 : {{if(isPlayer _x)then { [nil,_x, "loc", rEXECVM, "client\systems\generalStore\adds\wheater_effect.sqf", 4, _name] call RE; };}foreach playableunits;};
 case 5: {false execVM "client\functions\loadAtmosphere.sqf"; setdate[2020,10,10,12,10];};
 case 6 : {{if(isPlayer _x)then { [nil,_x, "loc", rEXECVM, "client\systems\generalStore\adds\wheater_effect.sqf", 6, _name] call RE; };}foreach playableunits;};
case 7: { false execVM "client\functions\loadAtmosphere.sqf";setdate[2020,10,10,23,50];};
 case 8 : {{if(isPlayer _x)then { [nil,_x, "loc", rEXECVM, "client\systems\generalStore\adds\wheater_effect.sqf", 8, _name] call RE; };}foreach playableunits;};

 };