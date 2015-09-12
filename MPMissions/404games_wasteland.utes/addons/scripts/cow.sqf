

player say "cow";
_randomPos=getposatl player;
_missionRewardRadius= 40;
_inArea = _randomPos nearEntities _missionRewardRadius;
	{
	if (isPlayer _x) then {
          // [nil, _x, "loc", rEXECVM, "addons\scripts\cow_1.sqf",name player] call RE;
          [nil, _x, "loc", rSPAWN, [], { player say "cow"; }] call RE;
	};
	} forEach _inArea;
        
       