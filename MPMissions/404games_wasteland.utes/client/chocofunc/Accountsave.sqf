
chocoDBsave=[
puid,
damage player,
(Weapons player - ["ItemMap","ItemCompass","ItemWatch","ItemRadio"]),
getPosATL (vehicle player),
player getVariable ["cmoney",0],
player getVariable ["bounty",0],
player getVariable ["donator",0],
player getVariable ["highscore",0],
player getVariable ["chocoload",0],
player getVariable ["home",0],
player getVariable ["saveVehicle",0],
player getVariable ["chocopack",0]

];
publicvariableserver"chocoDBsave";
chocoDBsave=nil;