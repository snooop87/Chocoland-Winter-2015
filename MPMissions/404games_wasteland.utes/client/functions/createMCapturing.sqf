// new marker script triggers the choco buff and ask if his team is 
_counter = 0;
_baum =0;
_sleep =0;
if (str(playerSide) == "GUER")then {_baum = [1,group player]};
if (str(playerSide) == "WEST") then {_baum = [2]};
if (str(playerSide) == "EAST") then {_baum = [3]};


while{walked} do {
 
    
    if (str(playerSide) == "GUER")then {_baum = [1,group player]};
    if ((capturecore select 0) == 0)then {player setvariable["ongui2","",false];"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0, 0, 0, 0.6],[0, 0, 0, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;
};
     if ((capturecore select 0) == 1)then {player setvariable["ongui2","Independent Captured.",false];"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0, 0.0], [0, 1, 0, 0.6],[0, 1, 0, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;
};
      if ((capturecore select 0) == 2)then {player setvariable["ongui2","Blufor Captured.",false];"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0, 0.0], [0, 0, 1, 0.6],[0, 0, 1, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;
};
       if ((capturecore select 0) == 3)then {player setvariable["ongui2","Opfor Captured.",false];"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0, 0.0], [1, 0,0, 0.6],[1, 0, 0, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;
};
if ( capturecore select 0 == _baum select 0)then {
    []call countingbounty;
    player setvariable ["cmoney",(player getvariable["cmoney",0])+5000,true];
}; sleep 60;
       
        };
        
        waituntil{walked};
        execVM"client\functions\createMCapturing.sqf";
        
        