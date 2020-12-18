apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
1--gametitle=Disney Hannah Montana - Spotlight World Tour (U)(SLUS-21750)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x004f952c,0x3FE38E32)
eeObj.WriteMem32(0x0050b5cc,0x3FE38E32)
end

emuObj.AddVsyncHook(widescreen)