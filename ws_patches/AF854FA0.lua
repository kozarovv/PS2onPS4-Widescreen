apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Space Channel 5 - Part 2 (SLUS_20807)
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x002E84D4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)