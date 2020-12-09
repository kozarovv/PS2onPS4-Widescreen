apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Le Mans 24 Hours (PAL-M5) (SLES-50131)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00322d84,0x080e7b49)
eeObj.WriteMem32(0x00322d88,0x00000000)
eeObj.WriteMem32(0x0039ed24,0x3c033faa)
eeObj.WriteMem32(0x0039ed28,0x3463aaab)
eeObj.WriteMem32(0x0039ed2c,0x27b001e0)
eeObj.WriteMem32(0x0039ed30,0x080c8b62)

-- 16:10
--eeObj.WriteMem32(0x00322d84,0x080e7b49)
--eeObj.WriteMem32(0x00322d88,0x00000000)
--eeObj.WriteMem32(0x0039ed24,0x3c033f99)
--eeObj.WriteMem32(0x0039ed28,0x3463999a)
--eeObj.WriteMem32(0x0039ed2c,0x27b001e0)
--eeObj.WriteMem32(0x0039ed30,0x080c8b62)
end

emuObj.AddVsyncHook(widescreen)