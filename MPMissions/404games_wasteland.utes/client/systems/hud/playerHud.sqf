disableSerialization;
private["_ui","_hud","_food","_water","_playerMoney","_vitals","_highscore"];
_core = "";
_fpic= 0;
_money= 0;
_n = 1;
_decimal =0;
_pic1= "<img size='1.3' image='client\icons\chocoGreen.paa'/>";
_pic2= "<img size='1.3' image='client\icons\chocoPurple.paa'/>";
_color1 = "17FF41";
_color2 = "FFA500";
_color3 = "FF1717";
_colorM =0;
while {walked} do
{
    1000 cutRsc ["WastelandHud","PLAIN"];
    _ui = uiNameSpace getVariable "WastelandHud";
    _vitals = _ui displayCtrl 3600;
    _hudVehicle = _ui displayCtrl 3601;
    _highscore = _ui displayCtrl 3602;
    _chococore = _ui displayCtrl 3603;
    _Mission = _ui displayCtrl 3604;

_money =player getVariable "cmoney";
_money=[_money] call fnc_number;
_bounty=player getvariable["bounty",1];
_multiplier = floor (player getvariable["bounty",1]);
_decimal =_bounty  - _multiplier;
_decimal = floor(_decimal * 10);
_decimalPlaces = 2;
    _health = damage player;
    _health = round (_health * (10 ^ _decimalPlaces)) / (10 ^ _decimalPlaces);
    _health = 100 - (_health * 100);
if(oldBounty == _bounty)then{
_fpic= _pic1;
};
if(oldBounty != _bounty)then{_fpic = _pic2;[]spawn{oldBounty=player getvariable["bounty",1];sleep 0.5;};
};
_vitals ctrlSetStructuredText parseText format ["<t size='2' font='Zeppelin33' color='#FFFFFF'>%1</t><t size='1.25' font='Zeppelin33' color='#FFFFFF'>,%2 %4</t><br/>%5 <img size='1' image='client\icons\health.paa'/><br/>%3 <img size='1' image='\CA\misc\data\icons\picture_money_CA.paa'/>", _multiplier,_decimal,_money, _fpic,_health];
_vitals ctrlCommit 0;
_highscore ctrlSetStructuredText parseText format [
"Chocoking: %3<br/>Tax: %2%1<br/>
Teamspeak: choco.roockstar.de<br/>
ServerIP: 91.231.69.163:2302<br/>
Longshot Record: %4 with %5 meter<br/>
Killing Spree : %6 with %7 Kills",
"%",
chocoking select 1,
chocoking select 0,
chocoland getvariable["ls",[0,"nobody"]] select 1,
floor (chocoland getvariable["ls",[0,"nobody"]] select 0),
chocoland getvariable["ks",[0,"nobody"]] select 1,
chocoland getvariable["ks",[0,"nobody"]] select 0
];
_highscore ctrlCommit 0;
_chococore ctrlSetStructuredText parseText format ["%1", player getvariable["ongui2",""]];
_chococore ctrlCommit 0;
if(isnil{player getvariable"mmonitor"})then{
if((player distance markerP) <=99999)then {_colorM= _color1;};
if((player distance markerP) <=500)then {_colorM= _color2;};
if((player distance markerP) <=250)then {_colorM= _color3;};
_v = chocoland getvariable["m",["Loading Mission..","","","",""]];
_Mission ctrlSetStructuredText parseText format [" 
<t color='#52bf90' shadow='2'>%1</t><br/>
<t><img size='3' image='%2'/></t><br/> 
       <t color='#FFFFFF' shadow='2'>Seconds left: %3 s</t><br/>
       <t color='#FFFFFF' shadow='2'>Units Left: %4</t><br/> 
        <t color='#%6' shadow='2'>Distance: %7 m</t><br/> 
       <t color='#52bf90' shadow='2'>Reward: %5 $</t><br/>",    
       _v select 0,
       _v select 1,
      _v select 2,
       _v select 3,
       _v select 4,
       _colorM,
       floor (player distance markerP)];
_Mission ctrlCommit 0;};
sleep 1;
};
waituntil{walked};
[] execVM "client\systems\hud\playerHud.sqf";