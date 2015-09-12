 _var="cmoney";
      _chocos=0;
      _random =0;
    _chocos =( player getvariable "cmoney")*2;
       _random = floor (random 100);
       if(_random >50)then {player setvariable["cmoney",_chocos,true];hint"you're realy lucky, YOU WON"}
       else{player setvariable["cmoney",0,true];[]call savePlayer;hint"you're not lucky this time, you lost all XD";
	};
   