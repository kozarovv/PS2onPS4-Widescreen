apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0013d7e8,0x3c023f40)
eeObj.WriteMem32(0x0013e044,0x3c023f40)
eeObj.WriteMem32(0x0013e1c8,0x3c023f40)
eeObj.WriteMem32(0x0025ef60,0x43e00000)
eeObj.WriteMem32(0x0025ef70,0x43e00000)
end

emuObj.AddVsyncHook(widescreen)