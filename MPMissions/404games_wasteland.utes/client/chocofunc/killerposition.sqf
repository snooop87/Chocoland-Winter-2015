
_private =["_k"];
_ne= [3958,4156,0];
_se =[4281,3075,0];
_sw=[3411,3118,0];
_nw= [2934,4165,0];
_k = _this select 0;

_pos = getpos _killer;
switch (true) do {
	case (_k distance _ne <  (_k distance _se) and _k distance _ne > (_k distance _nw) and _k distance _ne > (_k distance _sw)): 
        {chocoland globalChat format["\ %1 is near NorthEast ", name _k];};
	case (_k distance _se <  (_k distance _ne) and _k distance _se > (_k distance _nw) and _k distance _se > (_k distance _sw)): 
        {chocoland globalChat format["\ %1 is near SouthEast ", name _k];};
case (_k distance _nw <  (_k distance _ne) and _k distance _nw > (_k distance _se) and _k distance _nw > (_k distance _sw)): 
        {chocoland globalChat format["\ %1 is near NorthWest ", name _k];};
	case (_k distance _sw <  (_k distance _ne) and _k distance _sw > (_k distance _nw) and _k distance _sw > (_k distance _se)): 
        {chocoland globalChat format["\ %1 is near SouthWest ", name _k];};
	default {};
};

