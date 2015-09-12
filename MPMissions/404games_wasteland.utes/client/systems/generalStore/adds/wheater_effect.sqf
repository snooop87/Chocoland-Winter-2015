private [ "_case"];

_case=_this select 0;
_name = _this select 1;
switch (_case) do {

case 2 : {chocoland globalChat format ["%1 buyed Fog for all",_name ];3 setfog 0.8;};

case 4 : {chocoland globalChat format ["%1 buyed Bad Wheater for all",_name ];3 setovercast 1;};

 case 6 : {chocoland globalChat format ["%1 buyed Day for all",_name ];setdate[2020,10,10,12,10];};

 case 8 : {chocoland globalChat format ["%1 buyed Night for all",_name ];setdate[2020,10,10,23,50];};

 };