hint "Super Shield loaded!";player removeAction playershieldObject;

   pos = getPos player;
   pos = [(pos select 0),(pos select 1),0];
_timer= 0;
pm2 == 1;
_smoke = createVehicle ["ProtectionZone_Ep1",pos,[], 0,"CAN_COLLIDE"];
 _smoke setpos (getpos _smoke);
 _smoke1 = createVehicle ["smokeShellpurple",pos,[], 0,"CAN_COLLIDE"];
 _smoke1 setpos (getpos _smoke1);

while {_timer != 60} do
{
     sleep 1;
    _timer= _timer +1;
   
};

deleteVehicle _smoke;
deleteVehicle _smoke1;