
//	@file Version: 1.0
//	@file Name: declineGroupInvite.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19

//Get the inviters UID
{
	if(puid == _x select 1) then
	{
        currentInvites set [_forEachIndex,"REMOVETHISCRAP"];
        currentInvites = currentInvites - ["REMOVETHISCRAP"];
        publicVariableServer "currentInvites";       
	};
}forEach currentInvites;

chocoland globalChat format["you have declined the invite"];