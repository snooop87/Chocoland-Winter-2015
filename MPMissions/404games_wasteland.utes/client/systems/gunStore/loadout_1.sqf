

_loadout = player getvariable"chocoload";

_price = 5000;
xx=0;

{xx= _x;
        { if(xx == _x select 1 and xx != "") then { _price =_price+(_x select 2);}; }forEach weaponsArray;
	{ if(xx == _x select 0 and xx != "") then { _price =_price+(_x select 1); }; }forEach ammoArray;
	{ if(xx == _x select 0 and xx != "") then { _price =_price+(_x select 1); }; }forEach accessoriesArray;

 }foreach _loadout;
 geld =_price;
 
 