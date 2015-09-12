_command = "serverFPS = str(diag_fpsmin);publicVariable 'serverFPS';";
player setVariable ['PG_result',[]];
player setVehicleInit ("if isServer then {this setVariable [""PG_result"",[call {"+_command+"}],true]}");
processInitCommands;
clearvehicleinit player;
hint format["%1",serverFPS];