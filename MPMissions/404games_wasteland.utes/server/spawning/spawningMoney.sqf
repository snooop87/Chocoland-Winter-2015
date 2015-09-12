
if(!X_Server) exitWith {};

    //GREAT THX to Viba and KiloSwiss =D
  _private=["_pos1"];
_pos1=_this;
_pos =[_pos1 select 0,_pos1 select 1,0];

  _spawn = createVehicle ["EvMoney",_pos,[], 0,"CAN_COLLIDE"];
			
                        _spawn setPos _pos;
 _spawn setVariable["R3F_LOG_disabled", false, true];
