apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch

eeObj.WriteMem32(0x00181558,0x3c023f19)
eeObj.WriteMem32(0x00181560,0x3442999a)

eeObj.WriteMem32(0x00181718,0x3c033f19)
eeObj.WriteMem32(0x00181720,0x3463999a)

eeObj.WriteMem32(0x00181994,0x3c03440a)
eeObj.WriteMem32(0x001819f4,0x3c03440a)
end

emuObj.AddVsyncHook(widescreen)