apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht converted by Shang

-- 16:9
eeObj.WriteMem32(0x0017a918,0x3c023f19)
eeObj.WriteMem32(0x0017a920,0x3442999a)
eeObj.WriteMem32(0x0017aad8,0x3c033f19)
eeObj.WriteMem32(0x0017aae0,0x3463999a)
eeObj.WriteMem32(0x0017ad54,0x3c03440a)
eeObj.WriteMem32(0x0017adb4,0x3c03440a)

-- 16:10
--eeObj.WriteMem32(0x0017a918,0x3c023f2a)
--eeObj.WriteMem32(0x0017a920,0x3442aaab)
--eeObj.WriteMem32(0x0017aad8,0x3c033f2a)
--eeObj.WriteMem32(0x0017aae0,0x3463aaab)
--eeObj.WriteMem32(0x0017ad54,0x3c0343f9)
--eeObj.WriteMem32(0x0017adb4,0x3c0343f9)
end

emuObj.AddVsyncHook(widescreen)