externalConfigFolder = "\database";
if (loadFile (externalConfigFolder + "\db.sqf") != "") then
{
	call compile preprocessFileLineNumbers (externalConfigFolder + "\db.sqf");
};