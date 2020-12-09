apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Virtua Quest SLUS_209.77
--comment=Widescreen Hack
eeObj.WriteMem32(0x000ccf3c,0x3c033f40)
eeObj.WriteMem32(0x000ccf54,0x3c024420)
end

emuObj.AddVsyncHook(widescreen)