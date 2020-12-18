apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--Y-Fov
eeObj.WriteMem32(0x0034f7d4,0x3fc8aaab)

eeObj.WriteMem32(0x0034fc9c,0x3F59774F)
end

emuObj.AddVsyncHook(widescreen)