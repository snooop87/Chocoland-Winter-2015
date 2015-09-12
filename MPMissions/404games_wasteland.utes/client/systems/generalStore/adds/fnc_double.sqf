_chocos = player getvariable["bounty",1];
_random = floor (random 2);
if(_random ==1)then {player setvariable["bounty",_chocos *2,false];
hint format ["your realy lucky you won %1 chocos",_chocos];
 
	
	}else{
   hint"your not luck this time,try again.";
   player setvariable["bounty",0,false];
	
	};
   