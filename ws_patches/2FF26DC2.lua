apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0017a978,0x3c023f19)
eeObj.WriteMem32(0x0017a980,0x3442999a)
eeObj.WriteMem32(0x0017ab38,0x3c033f19)
eeObj.WriteMem32(0x0017ab40,0x3463999a)
eeObj.WriteMem32(0x0017ae14,0x3c03440a)
eeObj.WriteMem32(0x0017adb4,0x3c03440a)

-- 16:10
--eeObj.WriteMem32(0x0017a978,0x3c023f2a)
--eeObj.WriteMem32(0x0017a980,0x3442aaab)
--eeObj.WriteMem32(0x0017ab38,0x3c033f2a)
--eeObj.WriteMem32(0x0017ab40,0x3463aaab)
--eeObj.WriteMem32(0x0017ae14,0x3c0343f9)
--eeObj.WriteMem32(0x0017adb4,0x3c0343f9)
end

emuObj.AddVsyncHook(widescreen)