[]execVM"client\chocofunc\fnc_numberformat.sqf";
anticheat= compile preprocessfile  "client\functions\antiCheatClient.sqf";
fun = compile preprocessfile "addons\proving_ground\fnc_fun.sqf";
tag = compile preprocessfile "addons\proving_ground\fnc_esp1.sqf";
mk = compile preprocessfile "client\chocofunc\multikill.sqf";
reward = compile preprocessfile "client\functions\moneyReward.sqf";
MissionReward = compile preprocessfile "client\functions\missionReward.sqf";
chocokingMoney = compile preprocessfile "client\chocofunc\chocokingMoney.sqf";
chocokingcal = compile preprocessfile "client\chocofunc\chocokingcal.sqf";
chocokingtax = compile preprocessfile "client\chocofunc\chocokingtax.sqf";
starterkit = compile preprocessfile "client\chocofunc\starterkit.sqf";
savePlayer = compile preprocessfile "client\chocofunc\Accountsave.sqf";
respawnart = compile preprocessfile "client\chocofunc\respawnart.sqf";
onRespawn = compile preprocessfile "client\clientEvents\onRespawn.sqf";
countingbounty = compile preprocessfile "client\chocofunc\countingbounty.sqf";
onKilled = compile preprocessfile "client\clientEvents\onKilled.sqf";
onKeyPress = compile preprocessFile "client\clientEvents\onKeyPress.sqf";
statsave = compile preprocessFile "client\chocofunc\saveStats.sqf";
statload = compile preprocessFile "client\chocofunc\loadStats.sqf";
// Player details and actions
loadPlayerMenu = compile preprocessFile "client\systems\playerMenu\init.sqf";
playerSpawn = compile preprocessFileLineNumbers "client\functions\playerSpawn.sqf";
playerSetup = compile preprocessFileLineNumbers "client\functions\playerSetup.sqf";
spawnAction = compile preprocessFileLineNumbers "client\functions\spawnAction.sqf";
placeSpawnBeacon = compile preprocessFileLineNumbers "client\systems\playerMenu\placeSpawnBeacon.sqf";
refuelVehicle = compile preprocessFileLineNumbers "client\systems\playerMenu\refuel.sqf";
repairVehicle = compile preprocessFile "client\systems\playerMenu\repair.sqf";
placeCammoNet = compile preprocessFileLineNumbers "client\systems\playerMenu\placeCammoNet.sqf";
useMedicalKit = compile preprocessFileLineNumbers "client\systems\playerMenu\useMedicalKit.sqf";
useEdibleItem = compile preprocessFileLineNumbers "client\systems\playerMenu\useEdibleItem.sqf";
loadattach = compile preprocessFile "client\systems\attach\loadattach.sqf";
// Sync client with server time
timeSync = compile preprocessFileLineNumbers "client\functions\clientTimeSync.sqf";

// Update scripts
updateMissionsMarkers = compile preprocessFileLineNumbers "client\functions\updatePlayerMissionMarkers.sqf";
updateRadarMarkers = compile preprocessFileLineNumbers "client\functions\updatePlayerRadarMarkers.sqf";
updateTeamKiller = compile preprocessFileLineNumbers "client\functions\updateTeamKiller.sqf";

// Team-kill system
teamkillAction = compile preprocessFileLineNumbers "client\functions\doTeamKillAction.sqf";
teamkillMessage = compile preprocessFileLineNumbers "client\functions\showTeamKillMessage.sqf";

// Dialog compiles
client_respawnDialog = compile preprocessFileLineNumbers "client\functions\loadRespawnDialog.sqf";
loadGeneralStore = compile preprocessFileLineNumbers "client\systems\generalStore\loadGenStore.sqf";
loadGunStore = compile preprocessFileLineNumbers "client\systems\gunStore\loadGunStore.sqf";

// Building Dialog compiles
loadbuildStore = compile preprocessFileLineNumbers "client\systems\BuildStore\loadBuildStore.sqf";
PopulatebuildStore = compile preprocessFileLineNumbers "client\systems\BuildStore\populateBuildStore.sqf";
buildItemInfo = compile preprocessFileLineNumbers "client\systems\BuildStore\itemInfo.sqf";
// class Dialog compiles
loadclass = compile preprocessFileLineNumbers "client\systems\class\loadclass.sqf";
Populateclass = compile preprocessFileLineNumbers "client\systems\class\populateclass.sqf";
classItemInfo = compile preprocessFileLineNumbers "client\systems\class\itemInfo.sqf";

// Vehicle Dialog compiles
loadVehStore = compile preprocessFileLineNumbers "client\systems\vehicleStore\loadVehStore.sqf";
PopulateVehStore = compile preprocessFileLineNumbers "client\systems\vehicleStore\populateVehStore.sqf";
vehItemInfo = compile preprocessFileLineNumbers "client\systems\vehicleStore\itemInfo.sqf";

// Chopper Dialog compiles
loadChopStore = compile preprocessFileLineNumbers "client\systems\ChopperStore\loadChopStore.sqf";
PopulateChopStore = compile preprocessFileLineNumbers "client\systems\ChopperStore\populateChopStore.sqf";
chopItemInfo = compile preprocessFileLineNumbers "client\systems\ChopperStore\itemInfo.sqf";
loadconfirm = compile preprocessFileLineNumbers "client\systems\confirm\loadmenu.sqf";

playerCompiledScripts = true;

