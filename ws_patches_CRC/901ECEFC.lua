apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Van Helsing (SLUS-20738)
--comment=Wide screen patch 16:9 by paul_met
eeObj.WriteMem32(0x002E7FA0,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)