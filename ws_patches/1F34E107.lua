apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00174e64,0x3c024455)
end

emuObj.AddVsyncHook(widescreen)