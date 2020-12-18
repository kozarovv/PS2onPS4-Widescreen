apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Sims 2 - Castaway (E)(SLES-54903)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00435398,0x3c013fe3)
eeObj.WriteMem32(0x0043539c,0x34218e2a)
end

emuObj.AddVsyncHook(widescreen)