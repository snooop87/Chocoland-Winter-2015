

if (isNil "moneypick") then {moneypick = 0;};
if (moneypick==0) then
{
moneypick=1;
hint "auto pickupmoney ON";
sleep 0.001;
}
else
{
moneypick=0;
hint "auto pickupmoney Off";
aActionsIDs = aActionsIDs + [player addAction["Pickup Money", "client\actions\pickupMoney.sqf", [], 1, false, false, "", 'player distance (nearestobjects [player, ["EvMoney"],  5] select 0) < 5']];

sleep 0.001;
};

