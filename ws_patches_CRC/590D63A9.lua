apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0018877c,0x3c033f40)
eeObj.WriteMem32(0x0018890c,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)