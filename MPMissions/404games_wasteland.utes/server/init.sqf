if(!X_Server) exitWith {};
randomVehicleArray = ["MV22","Pchela1T","An2_1_TK_Civ_EP1","UH60M_MEV_EP1","UH60M_MEV_EP1","Mi17_medevac_RU","MH60S","BAF_Merlin_HC3_D","An2_1_TK_CIV_EP1","UH1H_TK_EP1","UH60M_EP1","AH6J_EP1","CH_47F_EP1","AW159_Lynx_BAF","UH1Y","AH1Z","F35B","Kamaz","TowingTractor","HMMWV_DES_EP1","Offroad_DSHKM_Gue","SUV_UN_EP1","UAZ_AGS30_TK_EP1","Ikarus_TK_CIV_EP1","HMMWV_Armored","M113Ambul_UN_EP1","GAZ_Vodnik","HMMWV_M2","BTR40_MG_TK_INS_EP1","UAZ_SPG9_INS","Ural_ZU23_CDF","HMMWV_M1151_M2_CZ_DES_EP1","LandRover_Special_CZ_EP1","ArmoredSUV_PMC","BAF_Jackal2_L2A1_D","UralRepair_TK_EP1","HMMWV_TOW","GAZ_Vodnik_HMG","BRDM2_ATGM_CDF","AAV","M1135_ATGMV_EP1","M1128_MGS_EP1","MTVR_Refuel","KamazReammo","HMMWV_Avenger","M113_UN_EP1"];
randomBuildingrray = ["Fort_Crate_wood","Land_stand_small_EP1","Land_Barrel_water","Land_kulna","Land_Shed_wooden","Land_GuardShed","Land_fortified_nest_small_EP1","Land_fortified_nest_big_EP1","Land_fort_bagfence_long","Land_fort_bagfence_round","Land_fort_bagfence_corner","Land_BagFenceLong","Land_Dirthump01","Land_fort_rampart_EP1","Land_fort_artillery_nest_EP1","Land_Ind_SawMillPen","Base_WarfareBBarrier5x","Base_WarfareBBarrier10x","Base_WarfareBBarrier10xTall","Land_HBarrier1","Land_HBarrier3","Land_HBarrier5","Land_HBarrier_large","Land_ConcreteBlock","Land_Fort_Watchtower_EP1","Land_Fort_Watchtower","Land_fortified_nest_big_EP1","WarfareBCamp","WarfareBDepot","Land_Misc_deerstand","Land_radar_EP1","CampEast_EP1","Land_tent_east","MASH","TK_WarfareBFieldhHospital_EP1","US_WarfareBFieldhHospital_EP1","Barrack2","Land_Barrack2_EP1","Land_CncBlock","Land_CncBlock_Stripes","Land_Misc_ConcPipeline_EP1","Misc_concrete_High","Concrete_Wall_EP1","RampConcrete","Land_ConcreteRamp","Land_ConcreteBlock","Land_Ind_BoardsPack2","Land_Ind_BoardsPack1","Land_Ind_Timbers","Hhedgehog_concrete","Hhedgehog_concreteBig","Land_Misc_Cargo1Eo_EP1","Land_Misc_Cargo2E","Land_Misc_Cargo1D","Fort_Barricade_EP1","Hedgehog_EP1","ZavoraAnim","Land_WoodenRamp","Land_prebehlavka","Land_prebehlavka","Land_prolejzacka","Land_leseni2x","Land_leseni4x","Land_Misc_Scaffolding","Land_Misc_Coil_EP1","Land_Fire_barrel_burning","Land_Campfire_burning","Land_Chair_EP1","WoodChair","Land_Bench_EP1","Land_Table_EP1","FoldChair","FoldTable","Land_sunshade_EP1","Land_covering_hut_EP1","Land_covering_hut_big_EP1","Land_KBud","Land_Toilet","Land_ladder","Land_ladder_half","WarfareBMGNest_PK_TK_EP1","Fort_Nest_M240","DSHkM_Mini_TriPod_TK_EP1"];
randomweaponarray = ["LeeEnfield","AA12_PMC","AKS_74_Kobra","AKS_Gold","bizon_silenced","Bizon","FN_FAL","G36K_camo","BAF_L85A2_UGL_ACOG",
"BAF_L85A2_RIS_ACOG","M16A2","M4A1_AIM_SD_camo","SCAR_L_CQC_Holo","SCAR_L_CQC_CCO_SD","MP5A5","MP5SD","Sa58V_CCO_EP1","m8_sharpshooter","M14_EP1",
"SVD","M24","M4SPR","SCAR_H_LNG_Sniper","SVD_CAMO","DMR","M40A3","M107","KSVK","VSS_Vintorez", "BAF_LRR_scoped","BAF_AS50_scoped","BAF_L110A1_Aim",
"BAF_L7A2_GPMG","BAF_L86A2_ACOG","m240_scoped_EP1","M240","M249_EP1","M249","M249_m145_EP1","M60A4_EP1","m8_SAW","MG36_camo","MG36","Mk_48","Mk_48_DES_EP1",
"PK","Pecheneg","RPK_74","BAF_L85A2_RIS_CWS","M136","M32_EP1","M47Launcher_EP1","M79_EP1","Mk13_EP1","RPG7V","SMAW"];
npcClassrray = ["RU_Citizen1","Rocker1","USMC_SoldierS_Sniper","USMC_Soldier_AT","FR_Commander","USMC_SoldierS_Engineer","CDF_Soldier_Medic","RU_Soldier_Sniper",
"Ins_Soldier_CO","TK_Soldier_AT_EP1","BAF_Soldier_Officer_MTP","TK_Soldier_Engineer_EP1","Ins_Soldier_Medic","GUE_Soldier_Sniper","GUE_Soldier_Scout",
"USMC_Soldier_AT","UN_CDF_Soldier_Officer_EP1","Soldier_Engineer_PMC","Ins_Commander","Ins_Lopotev","Ins_Soldier_Pilot","Ins_Soldier_Sab","Doctor",
"Functionary1","Profiteer1","Priest","RU_Pilot","RU_Policeman","Haris_Press_EP1","Soldier_Medic_PMC"];
//####DATABASE DEFINE
getAccount=0;
banlist=[];
chocoking= ["Nobody",0];
SideHQ = createCenter east;_serverCompiledScripts = [] execVM "server\functions\serverCompile.sqf";
"diag_log_server" addPublicVariableEventHandler {diag_log (_this select 1)};
"chocoOBload" addPublicVariableEventHandler {[(_this select 1)]call objectload;};
"chocoDBsave" addPublicVariableEventHandler {_count=0;_set=0;  {if ((_x select 0) == ((_this select 1) select 0))then {DB set [_count,(_this select 1)];_set=1;}; _count = _count +1;  }foreach DB; if(_set == 0)then{          DB set [count DB,_this select 1];           };          };
"chocoDBload" addPublicVariableEventHandler {    {if ((_x select 0) == (_this select 1))then {        chocoland setvariable[(_this select 1),_x,true];};        }foreach DB; };
"checkbanlist" addPublicVariableEventHandler {publicvariable"BANLIST"};
[] execVM "server\functions\serverVars.sqf";
[] execVM "server\functions\broadcaster.sqf";
[] execVM "server\functions\relations.sqf";
[] execVM "server\db.sqf";
waitUntil{scriptDone _serverCompiledScripts};
_vehSpawn = [] ExecVM "server\functions\vehicleSpawning.sqf";
	waitUntil{sleep 0.1; scriptDone _vehSpawn};
  //  _objSpawn = [] ExecVM "server\functions\objectsSpawning.sqf";
	//waitUntil{sleep 0.1; scriptDone _objSpawn};
    _gunSpawn = [] ExecVM "server\functions\staticGunSpawning.sqf";
	waitUntil{sleep 0.1; scriptDone _gunSpawn};
    _heliSpawn = [] ExecVM "server\functions\staticHeliSpawning.sqf";
    waitUntil{sleep 0.1; scriptDone _heliSpawn};
    _markerClean = [] ExecVM "server\functions\cleanMarkers.sqf";
    waitUntil{sleep 0.1; scriptDone _markerClean};

//Execute Server Missions. 
[] execVM "server\spawnController.sqf";
[] execVM "server\capturecore.sqf";
//carrier spawn
_Carrierpos =[];
_objects=[
[[3301.79,3608.9,0.00143814],"Land_HouseB_Tenement"],
[[3727.52,3841.4,0.00135422],"Land_A_TVTower_Base"],
[[3749.97,3189.22,-0.4],"Land_A_TVTower_Base"],
[[4132.07,3611.83,0.00143814],"Land_A_BuildingWIP"],
[[2998.52,3369.66,-0.00402874],"Land_Destroyer"],
[[3374.32,3658.28,0.00143814],"Land_A_CraneCon"],
[[4320.86,3746.63,0.00139236],"Land_A_CraneCon"],
[[4036.36,3854.51,0.00132179],"Land_Barn_Metal"],
[[3481.71,3314.21,0.0014286],"Land_Barn_Metal"],
[[3142.83,4037.05,0.00143814],"Land_Ind_Pec_01"],
[[4002.46,3096.01,0.00144196],"Land_Ind_Mlyn_01"],
[[3708,3607,0.0014],"HeliHCivil"]
];
{_pos=_x select 0; _spawn = (_x select 1) createVehicle _pos;_spawn setpos _pos;
} foreach _objects;
diag_log format ["WASTELAND SERVER customObjects Spawned"];
/*{
_pos= [_x select 0,_x select 1,-0.9];_center = createCenter sideLogic;  _group = createGroup _center; 
LHD = _group createUnit ["LOGIC",[_pos select 0,_pos select 1, -0.9] , [], 0, ""];
LHD call BIS_EW_fnc_createLHD;3732,3604
} foreach _Carrierpos;*/

diag_log format ["WASTELAND SERVER Mission Called"];
if (isDedicated) then {	_id = [] execFSM "server\WastelandServClean.fsm";};
chocoland setvariable["killbounty",0,true];
[] execVM "server\missions\mainMissionController.sqf";
