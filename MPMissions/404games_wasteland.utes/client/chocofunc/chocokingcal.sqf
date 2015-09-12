// define variable
_tempbounty=1;
_name ="nobody";
_leader = "";
// welcher spieler hat die meiste Choco
{
    if((_x getvariable["bounty",1]) > _tempbounty)then {_tempbounty = (_x getvariable"bounty");_name = name _x;_leader =_x;};
}foreach playableunits;
chocoking = [_name,(chocoking select 1),_leader];
publicVariable"chocoking";


