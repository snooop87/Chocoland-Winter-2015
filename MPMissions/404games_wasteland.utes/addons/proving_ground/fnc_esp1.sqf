

/*if (isnil "pm") then {pm = 0;}; if (pm == 0) then {pm = 1; hint "Player Markers ON";} else {pm = 0; hint "Player Markers OFF";};
setGroupIconsVisible [true, true];
while {pm == 1} do
{
    {
        if (getPlayerUID _x != "") then
        {
            clearGroupIcons group _x;
            group _x addGroupIcon ["x_art"];
            group _x setGroupIconParams [[1, 0.35, 0, 1], format ["%1 (%2m)", name _x, round (_x distance player)], 0.7, true];
        };
    } forEach entities "AllVehicles";
    sleep 1;
};
{clearGroupIcons group _x;} forEach entities "AllVehicles";*/

setGroupIconsVisible [true, true];
_color_green = [0,1,0,1];
_color_blue = [0,0,1,1];
_color_white = [1, 1, 1, 1];
_color_orange = [1,0.3,0,1];
_color_red = [1,0,0,1];

if (isnil "lazy_ILHA_is_lazy") then {lazy_ILHA_is_lazy = 0;}; if (lazy_ILHA_is_lazy == 0) then {lazy_ILHA_is_lazy = 1; hint "Player Markers ON ";} else {lazy_ILHA_is_lazy = 0; hint "Player Markers OFF";};

while {lazy_ILHA_is_lazy == 1} do
{
    {
        if (vehicle _x == _x and getPlayerUID _x != "") then 
        {
            clearGroupIcons group _x;
            group _x addGroupIcon ["x_art"];
            
            if ((side _x == side player) && (side player != resistance)) then 
            {
                group _x setGroupIconParams [_color_white, format ["[%1]-[%2m]",name _x,round(_x distance player)], 0.5, true];
            } 
            else 
            {
                group _x setGroupIconParams [_color_orange, format ["[%1]-[%2m]",name _x,round(_x distance player)], 0.5, true];
            };
        }
        else
        {
            clearGroupIcons group _x;
            group _x addGroupIcon ["x_art"];
            
            if ((side _x == side player) && (side player != resistance)&& getPlayerUID _x != "") then 
            {
                _vehname = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName'));
                _crew =            (name (crew (vehicle _x) select 0));
                _crew2 =        ", "+(name (crew (vehicle _x) select 1));
                _crew3 =        ", "+(name (crew (vehicle _x) select 2));
                _crew4 =        ", "+(name (crew (vehicle _x) select 3));
                _crew5 =        ", "+(name (crew (vehicle _x) select 4));
                _crew6 =        ", "+(name (crew (vehicle _x) select 5));
                _crew7 =        ", "+(name (crew (vehicle _x) select 6));
                _crew8 =        ", "+(name (crew (vehicle _x) select 7));
                _crew9 =        ", "+(name (crew (vehicle _x) select 8));
                _crew10 =    ", "+(name (crew (vehicle _x) select 9));
                group _x setGroupIconParams [_color_white, format ["[%2]-[%3%4%5%6%7%8%9%10%11]-[%1m]",round(_x distance player),_vehname,_crew,_crew2,_crew3,_crew4,_crew5,_crew6,_crew7,_crew8,_crew9,_crew10], 0.5, true];
            } 
            else 
            {if(getPlayerUID _x != "")then{
                _vehname = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle _x) >> 'displayName'));
                _crew =            (name (crew (vehicle _x) select 0));
                _crew2 =        ", "+(name (crew (vehicle _x) select 1));
                _crew3 =        ", "+(name (crew (vehicle _x) select 2));
                _crew4 =        ", "+(name (crew (vehicle _x) select 3));
                _crew5 =        ", "+(name (crew (vehicle _x) select 4));
                _crew6 =        ", "+(name (crew (vehicle _x) select 5));
                _crew7 =        ", "+(name (crew (vehicle _x) select 6));
                _crew8 =        ", "+(name (crew (vehicle _x) select 7));
                _crew9 =        ", "+(name (crew (vehicle _x) select 8));
                _crew10 =    ", "+(name (crew (vehicle _x) select 9));
                group _x setGroupIconParams [_color_red, format ["[%2]-[%3%4%5%6%7%8%9%10%11]-[%1m]",round(_x distance player),_vehname,_crew,_crew2,_crew3,_crew4,_crew5,_crew6,_crew7,_crew8,_crew9,_crew10], 0.5, true];
                };
            };
        };
    } forEach allUnits;
sleep 0.5;
};
{clearGroupIcons group _x;} forEach allUnits;