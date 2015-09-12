#include "defs.hpp"
private["_core"];
if (isClass(configFile >> "cfgPatches" >> "ace_main")) then {
	ace_sys_wounds_enabled = true;
	publicVariable "ace_sys_wounds_enabled";
};

if (time==0) then {
	sleep .1;
};

if !(isNil{GVAR(init)}) exitWith {};

//init functions
__prepFnc(ammo);
__prepFnc(booster);
__prepFnc(target);
__prepFnc(status);
__prepFnc(autoheal);
__prepFnc(sound);
__prepFnc(bulletcam);
__prepFnc(bullettrack);
__prepFnc(create_vehicle);
__prepFnc(create_weapon);
__prepFnc(exec_console);
__prepFnc(sattelite);
__prepFnc(statistics);
__prepFnc(environment);
if (isClass(configFile >> "cfgVehicles" >> "An2_1_TK_CIV_EP1")) then {
	PG_set(satcam_keyhandler,__preprocess __scriptPath(satcam_keyhandler_OA));
}else{
	PG_set(satcam_keyhandler,__preprocess __scriptPath(satcam_keyhandler));
};
#include "fnc_global.sqf"

PG_set(STATUS,true);
[] call PG_get(fnc_status);

GVAR(init) = true;

//init functions for HJ_cfgExplorer
#define __addon_prefix proving_ground_HJ_