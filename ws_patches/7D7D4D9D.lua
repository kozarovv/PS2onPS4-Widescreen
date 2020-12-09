apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0013d778,0x3c023f40)
eeObj.WriteMem32(0x0013dfd4,0x3c023f40)
eeObj.WriteMem32(0x0013e158,0x3c023f40)
eeObj.WriteMem32(0x0025be20,0x43e00000)
eeObj.WriteMem32(0x0025be30,0x43e00000)
end

emuObj.AddVsyncHook(widescreen)