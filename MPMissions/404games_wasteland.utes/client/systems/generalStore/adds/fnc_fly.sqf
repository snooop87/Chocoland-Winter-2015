playerflyId = player addAction [format ["<t color='#585858'>%1</t>", "FLY OFF"], "addons\proving_ground\fnc_fly1.sqf",[],-12,false,false,"","local player"];
 playerflyoff = player addAction [format ["<t color='#D8D8D8'>%1</t>", "FLY ON"], "addons\proving_ground\fnc_fly2.sqf",[],-10,false,false,"","local player"];
chocoland globalChat"check mouseWheel commands,Fly on -> press SPACE for toggle and  Q - Y for up and down";

player setvariable["fly",1,true];