apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0023b1f4,0x3c023f22)
eeObj.WriteMem32(0x0075d228,0xbfaa0000)
end

emuObj.AddVsyncHook(widescreen)