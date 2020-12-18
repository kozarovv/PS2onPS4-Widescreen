apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x004c4ed0,0x3F81DE4A)
eeObj.WriteMem32(0x004c4f50,0x3F81DE4A)
end

emuObj.AddVsyncHook(widescreen)