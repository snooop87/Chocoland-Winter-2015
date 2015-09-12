if(5000 > (player getVariable "cmoney")) exitWith {hint "You do not have enough money"};

[] execVM "client\systems\generalStore\adds\rainbow.sqf";
closedialog 0;
