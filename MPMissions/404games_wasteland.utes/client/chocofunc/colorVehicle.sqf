sleep 20;_array = [0.01,0.01,0.01,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5,0.55,0.6,0.65,0.7,0.75,0.8,0.85,0.9,0.95,1,1,1,1];
 _skin = ["client\images\millitary.jpg","client\images\snowy.jpg","client\images\rainbow.jpg","client\images\leopard.jpg"];
 {
    if ( _x isKindOf "Air" || _x iskindof "LandVehicle" ) then {
    call compile format["_x setObjectTexture [0, ""#(rgb,8,8,3)color(%1,%2,%3,0.5)""];
",_array select (random (count _array - 1)),
_array select (random (count _array - 1)),
_array select (random (count _array - 1))];
if(random 1 >0.7)then {_x setObjectTexture [0, _skin call BIS_fnc_selectRandom];}
};
}count allMissionObjects "All";
