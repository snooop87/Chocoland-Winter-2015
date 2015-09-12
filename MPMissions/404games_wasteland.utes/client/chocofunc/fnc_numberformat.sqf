
fnc_number={
private ["_integerPart", "_string", "_numIntegerDigits","_thousandsSeparator"];
_number =_this select 0;
if (_number < 1)exitwith { _string = "0";_string;};
if (isnil"_number")exitwith {_string = "0";_string;};
if (_number < 999)exitwith { _string = _number;_string;};
_thousandsSeparator = ".";
_integerPart= 0;
_digit=0;
_integerPart = round (abs _number);
_string = "";
_numIntegerDigits = 0;
while {_integerPart > 0 } do
{
	if ((_numIntegerDigits > 0) and ((_numIntegerDigits mod 3) == 0)) then
	{
		_string = _thousandsSeparator + _string;
	};

	_string =  (str (_integerPart mod 10)) + _string;
	_numIntegerDigits = _numIntegerDigits + 1;

	_integerPart = floor (_integerPart / 10);
};
_string;
};
