if (isnil "RE") then {[] execVM "\ca\Modules\MP\data\scripts\MPframework.sqf"};
[] execVM "addons\bisfix11\init.sqf";
enableSaving[false,false];
//enableEngineArtillery false; 
X_Server = false;X_Client = false;X_JIP = false;
versionName = "v1.2 - CoreDefense + VehicleManager";
serverDatabaseOn= false;
if(isServer) then { X_Server = true;};
if(!isDedicated) then { X_Client = true;};
if(isNull player) then {X_JIP = true;};
true spawn {	if(!isDedicated) then {
 titleRsc["introImage", "PLAIN", 8];		
                waitUntil {!isNull player};
              client_initEH = player addEventHandler ["Respawn", {removeAllWeapons (_this select 0);}];
                };};

[] execVM "briefing.sqf";
if(X_Client) then {[]execVM"client\config.sqf";
    waitUntil {!isNull player};
    if(count units group player > 1) then
	{
            [player] join grpNull;    
            };

[] execVM "client\init.sqf";
};
if(X_Server) then {
    diag_log format ["# ChocoLand #"];
    [] execVM "server\init.sqf";
};
[] execVM "addons\R3F\init.sqf";
[] execVM "addons\proving_Ground\init.sqf";
walked =true;
[0, 0, 0] execVM "addons\scripts\DynamicWeatherEffects.sqf";
