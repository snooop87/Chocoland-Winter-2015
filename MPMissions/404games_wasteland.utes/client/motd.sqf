if(!X_Client) exitWith {};
sleep 10;
player globalchat "update:08/16/15: chocoDB will save Objects over next server restart, you need to Load Locked Objects restart every day,otherwise your Base will delete comming climbing";
sleep 10;
player globalchat "Custom global Chat:Press Space-> write your Message and press Enter,F5 to open the Parastore, F3 - SmartAmmoBuy, Press T to open the Vehicle Manager(recolor/reskin/attach)";
sleep 300;
_money=0;
_hint =  format ["ChocoLand - Welcome %1, on this Server you have a Custom Shop for Weapons, Vehicles, Planes, Jets, Choppers and Buildings(check mousewheel), new Killing System, you can be an Animal, you can ATtach and Recolor /give special skin to an Vehicle, you cannot unlock enemy locked objects, you will get much money all your Rewards will Multiplier your BigScore", name player];
player globalchat _hint;
sleep 1;
_hint1 = "ChocoLand - Multiplier - kill payers + Npc`s stay alive to get multiplier -> all your Rewards will * (Multiplier)";
_hint2 = "ChocoLand - New Store - Parachute Store for Vehicles , Bulings, Choppers, Planes , Jets,Generals , Weapons buy on each position";
_hint3 = "ChocoLand - New Reward system + custom Globalchat use with Space";
_hint4 = "ChocoLand - Change your Skin , become an explosive Animal";
_hint5 = "ChocoLand - Basecore - get money over time , you need to buy it on Buildingstore and activate, ( only 1 activ)";
_hint6 = "ChocoLand - Mission Rewards and improved Npcs with random Weapons and Rewards";
_hint7 = "ChocoLand - ChocoSupply will Repair , Rearm and Refuel all Vehicles and Static Guns on the Map , cast every Hour";
_hint8 = "ChocoLand - ChocoDoor - use it on a  building with ""O"" (lookedObject) to open like a door, eg. entrance for your big Base";
_hint9 = "ChocoLand - Save Vehicle - Save your favorite Vehicle in your Special Hangar and get it back on your playerMenu";
_hint10 = "ChocoLand - Choco King - be the Best player and become the Choco King and you will get $ for all actions players do, and you may to change this TAX % e.g. 50% of all incomming Money you will get";
_hint11 = "ChocoLand - Claymore - plant a bomb , it will waiting for enemys and blow up automatically";
_hint12 = "ChocoLand - Suicide bomb - if you get rapped and you know where the enemys are, use paradrop and Suicide bomb to kill all players in a  range of 100meters";
_hint13 = "ChocoLand - Cowcycle  and other Custom Vehicles-  enjoy our CustomVehicles";
_hint14 = "ChocoLand - Multikill - get Bonus for killing fast much players  upto 6 for Legendary and you get a Rank  with emotes and sounds";
_hint15 = "ChocoLand - Vehicle Manager - use with ""T"" Change Skins , colors add weapons , static guns or other Vehicles to your favorite Vehicle";
_hint16 = "ChocoLand - Highscore - it will show your stats about  KillPlayer, Winning streak  , deaths ,total walked,time played, cleared mission, total payed ,money earned in your Playermenu";
_hint17 = "ChocoLand - Rescue Animal - there Explosive and very Dangerous but we need to rescue them out of the WarZone,please help all animals";
_hint18 = "ChocoLand - Fast Respawn  -> change your Spawn Method in parastore (F5)";
_hint19 = "ChocoLand - Build improved basis (unlock only Owner of Object, move up /down , release correctly) ";
_hint20 = "ChocoLand - ChocoDB-> playerprofile will save you stats over disconnects and restarts";
sleep 600;
while {true} do 
{
[]call countingbounty;
_money =  floor ((player getvariable"bounty")*1000);
player setVariable["cmoney",(player getvariable["cmoney",1]) +_money,true];
_random = round (random 20)+1;
call compile format["player globalchat _hint%1;", _random];
sleep 600;

};