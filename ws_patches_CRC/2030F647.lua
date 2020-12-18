apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0019a3a8,0x3c023f19)
eeObj.WriteMem32(0x0019a3b0,0x3442999a)
eeObj.WriteMem32(0x0019a238,0x3c033f19)
eeObj.WriteMem32(0x0019a240,0x3463999a)
eeObj.WriteMem32(0x00199f60,0x3c02440a)
eeObj.WriteMem32(0x00199e60,0x3c02440a)
eeObj.WriteMem32(0x0024f2c8,0x3c0243ab)
end

emuObj.AddVsyncHook(widescreen)