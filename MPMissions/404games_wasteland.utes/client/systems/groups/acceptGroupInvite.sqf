
//	@file Version: 1.0
//	@file Name: acceptGroupInvite.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19

private["_inviterUID","_inviter"];

//Get the inviters UID
_groupExists = false;
{
	if(puid == _x select 1) then
	{
    	_inviterUID = _x select 0;
        currentInvites set [_forEachIndex,"REMOVETHISCRAP"];
        currentInvites = currentInvites - ["REMOVETHISCRAP"];
        publicVariableServer "currentInvites";       
	};
}forEach currentInvites;

//Get the inviter with their UID
{
	if(getPlayerUID _x == _inviterUID) then
    {
    	_inviter = _x;
        _groupExists = true;	    
    };   
}forEach playableUnits;

if(_groupExists) then
{
	[player] join (group _inviter);
    chocoland globalChat format["you have accepted the invite"];
} else {
	chocoland globalChat format["The group no longer exists"];    
}; 