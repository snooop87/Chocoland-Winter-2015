

_pos = getpos player;_bomb = "RHIB2Turret" createVehicle _pos;_bomb setpos _pos;  _bomb2 = "Land_Fregata" createVehicle _pos;_bomb2 setpos _pos;_bomb2 attachTo [_bomb,[0,0.5,0.5]];_bomb2 setdir 180;player moveindriver _bomb;  player assignAsDriver _bomb; _bomb3 = "M119" createVehicle _pos;_bomb3 setpos _pos;_bomb3 attachTo [_bomb2,[0,20,13]];_bomb2 setdir 180; _bomb4 = "ZU23_TK_EP1" createVehicle _pos;_bomb4 setpos _pos;_bomb4 attachTo [_bomb2,[0,-20,19]];_bomb2 setdir 180;

