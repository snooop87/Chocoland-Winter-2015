

behindi =0;
while {cooldown != 0} do
{cooldown = cooldown -1; sleep 1;};
_pos = getposatl doorobject;
_nic = [player, doorobject, "per", rHideobject, false] call RE; 
behindi =1;