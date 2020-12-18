apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kessen 3 SLUS_211.19
--comment=Widescreen Hack
eeObj.WriteMem32(0x0015be08,0x3c023f40)
eeObj.WriteMem32(0x0038f4d8,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)