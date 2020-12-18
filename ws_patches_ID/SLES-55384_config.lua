apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Warriors Orochi 2 (PAL-G) (SLES-55384)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001ad8f8,0x3c023f19)
eeObj.WriteMem32(0x001ad900,0x3442999a)
eeObj.WriteMem32(0x001ad788,0x3c033f19)
eeObj.WriteMem32(0x001ad790,0x3463999a)
eeObj.WriteMem32(0x001ad4ac,0x3c02440a)
eeObj.WriteMem32(0x001ad3ac,0x3c02440a)
eeObj.WriteMem32(0x0026fca8,0x3c0243ab)

-- 16:10
--eeObj.WriteMem32(0x001ad8f8,0x3c023f2a)
--eeObj.WriteMem32(0x001ad900,0x3442aaab)
--eeObj.WriteMem32(0x001ad788,0x3c033f2a)
--eeObj.WriteMem32(0x001ad790,0x3463aaab)
--eeObj.WriteMem32(0x001ad4ac,0x3c0243f9)
--eeObj.WriteMem32(0x001ad3ac,0x3c0243f9)
--eeObj.WriteMem32(0x0026fca8,0x3c02439a)
end

emuObj.AddVsyncHook(widescreen)