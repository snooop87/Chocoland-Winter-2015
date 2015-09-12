[] execVM "ban.sqf";
_player = _this;
process = false;
5 setovercast 0;
_player setskill 0;
{_player disableAI _x} foreach ["move","anim","target","autotarget"];
_player setVariable ["ShowNameAllies", false];
_player removeWeapon "ItemRadio";
_player removeWeapon "ItemGPS";
removeAllWeapons _player;
removeBackpack _player;
//random start weapon
_arrayW =  ["glock17_EP1","Sa61_EP1","M9SD","UZI_SD_EP1","revolver_gold_EP1","Makarov","Colt1911","MakarovSD","M9","revolver_EP1","UZI_EP1"];
_rweapon = _arrayW  select floor(random(count _arrayW));
_player addweapon _rweapon;
_player selectWeapon _rweapon;
_magazines = getArray(configFile >> "cfgWeapons" >> _rweapon>> "magazines");
_magazines = _magazines select 0; 
_player addmagazine _magazines;
_player addmagazine _magazines;
_player addmagazine _magazines;

if(_player getvariable["donator",0] == 1)then{
_curVal = Donatorweapon;
if (!isNil"_curVal") then 
{
    removeAllWeapons _player;
    {
        _player addWeapon _x;
                _player selectWeapon _x;
    }foreach _curVal;
};
};
_player addrating 1000000;
_player switchMove "amovpknlmstpsraswpstdnon_gear";
_player setVariable["lastPos",(getpos player),false];
_player setVariable["medkits",0,false];
_player setVariable["fuel",0,false];
_player setVariable["repairkits",0,false];
_player setVariable["fuelFull",0,false];
_player setVariable["fuelEmpty",0,false];
_player setVariable["bombs",false,false];
_player setVariable["camonet",0,false];
_player setVariable["canDrop",false,false];
_player setvariable["ongui","",false];
_player setvariable["ks",0,false];
_player setVariable["decoder",1,false];
_player setVariable["basebuilder",1,false];
if(isnil"newstart")then{[]spawn{sleep 60;newstart = 0;};};
if(!isnil"newstart")then {
_player setvariable["bounty",1,true];};
[] execVM "client\functions\playerActions.sqf";
process = false;
spawni setObjectTexture [0, ""];
spawni2 setObjectTexture [0, ""];
spawni3 setObjectTexture [0, ""];
_player setVariable["basecore",0,false];
_test = time - timeplayer;
_y= _player getvariable["highscore",[0,0,0,0,0,0,0,0]]; 
if(!isnil"_y")then {_y set [6,(_y select 6)+_test];
_player setvariable["highscore",_y,false];};
timeplayer = time;
playerSetupComplete = true;

