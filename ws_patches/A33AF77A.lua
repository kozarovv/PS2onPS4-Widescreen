apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tenchu Fatal Shadows SLUS_211.29
--comment=Widescreen Hack
eeObj.WriteMem32(0x0012ef48,0x3c023f40)
eeObj.WriteMem32(0x0012f738,0x3c02442b)
end

emuObj.AddVsyncHook(widescreen)