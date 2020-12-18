apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

eeObj.WriteMem32(0x0015e300,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)