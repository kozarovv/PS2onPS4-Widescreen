apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0019a798,0x3c023f19)
eeObj.WriteMem32(0x0019a7a0,0x3442999a)
eeObj.WriteMem32(0x0019a628,0x3c033f19)
eeObj.WriteMem32(0x0019a630,0x3463999a)
eeObj.WriteMem32(0x0019a350,0x3c02440a)
eeObj.WriteMem32(0x0019a250,0x3c02440a)
eeObj.WriteMem32(0x0024fd08,0x3c0243ab)
end

emuObj.AddVsyncHook(widescreen)