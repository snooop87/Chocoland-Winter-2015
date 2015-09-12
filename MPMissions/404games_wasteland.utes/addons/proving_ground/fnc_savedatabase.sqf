_command = "[]call dbSave;";
player setVariable ['PG_result',[]];
player setVehicleInit ("if isServer then {this setVariable [""PG_result"",[call {"+_command+"}],true]}");
processInitCommands;
hint format["%1","saving database"];