private [_var];
_var = _this select 1;

//change spawnArt
 switch (_var) do {
        
     case 0: {SPAWNART = 1;};
     case 1: {SPAWNART = 2;hint "changed to Paradrop";};
     case 2: {
         if((player getvariable"beacon") == 1) then{
             if(alive chocobeacon)then {
             SPAWNART = 3;hint "changed to Beacon";};
                 }else{hint"you dont have an active Beacon"}
                                                    } 
            };