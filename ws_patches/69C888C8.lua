apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0019ae38,0x3c023f19)
eeObj.WriteMem32(0x0019ae40,0x3442999a)
eeObj.WriteMem32(0x0019acc8,0x3c033f19)
eeObj.WriteMem32(0x0019acd0,0x3463999a)
eeObj.WriteMem32(0x0019a9f0,0x3c02440a)
eeObj.WriteMem32(0x0019a8f0,0x3c02440a)
eeObj.WriteMem32(0x00250818,0x3c0243ab)

-- 16:10
--eeObj.WriteMem32(0x0019ae38,0x3c023f2a)
--eeObj.WriteMem32(0x0019ae40,0x3442aaab)
--eeObj.WriteMem32(0x0019acc8,0x3c033f2a)
--eeObj.WriteMem32(0x0019acd0,0x3463aaab)
--eeObj.WriteMem32(0x0019a9f0,0x3c0243f9)
--eeObj.WriteMem32(0x0019a8f0,0x3c0243f9)
--eeObj.WriteMem32(0x00250818,0x3c02439a)
end

emuObj.AddVsyncHook(widescreen)