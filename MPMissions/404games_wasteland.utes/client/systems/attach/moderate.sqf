
_switch = _this select 0;
switch (_switch) do
{ 
 case 1:{objectMoveup=objectMoveup +0.3;};//h+1
 case 2:{objectMoveup=objectMoveup -0.3;};
 case 3:{objectMovebreite=objectMovebreite+0.3;};
 case 4:{objectMovebreite=objectMovebreite-0.3;};
 case 5:{objectMovelaenge=objectMovelaenge+ 0.3;};
 case 6:{objectMovelaenge=objectMovelaenge- 0.3;};
 case 7:{dir=dir+15};
 case 8:{dir=dir-15};
};
object2 attachTo [object1,[objectMovebreite,objectMovelaenge,objectMoveup]];
object2 setdir dir;
