apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00199e54,0x3c024455)
end

emuObj.AddVsyncHook(widescreen)