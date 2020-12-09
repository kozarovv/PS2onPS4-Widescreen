apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch

-- 16:9
eeObj.WriteMem32(0x00181bf8,0x3c023f19)
eeObj.WriteMem32(0x00181c00,0x3442999a)

eeObj.WriteMem32(0x001882a8,0x3c033f19)
eeObj.WriteMem32(0x00181dc0,0x3463999a)

eeObj.WriteMem32(0x00182034,0x3c03440a)
eeObj.WriteMem32(0x00182094,0x3c03440a)
end

emuObj.AddVsyncHook(widescreen)