lastPos=0;
sleep 6;
_distancefoot = 1;

while {true}do {
 if(walked)then {

_charPos = getPos player;
_distance = lastPos distance _charPos;
_distanceFoot = floor(1 max _distance);
chocoland globalChat format ["%1 feet distance",_distance];
if (_distanceFoot < 1000) then {
_y= player getvariable["highscore",[0,0,0,0,0,0,0,0]];_y set [7,(_y select 7)+_distanceFoot];player setvariable["highscore",_y,false];
lastPos=_charPos;
};
};
sleep 10;
};
