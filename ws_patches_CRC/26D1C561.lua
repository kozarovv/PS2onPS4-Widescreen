apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0023f6bc,0x3c013f40)
eeObj.WriteMem32(0x0023f6c8,0x44810000)
eeObj.WriteMem32(0x0023f6cc,0x4600c602)
eeObj.WriteMem32(0x00120f70,0x3c033f19)
eeObj.WriteMem32(0x00120f78,0x3462999a)
eeObj.WriteMem32(0x00158370,0x3c0243d6)

-- 16:10
--eeObj.WriteMem32(0x0023f6bc,0x3c013f55)
--eeObj.WriteMem32(0x0023f6c0,0x34215555)
--eeObj.WriteMem32(0x0023f6c8,0x44810000)
--eeObj.WriteMem32(0x0023f6cc,0x4600c602)
--eeObj.WriteMem32(0x00120f70,0x3c033f2a)
--eeObj.WriteMem32(0x00120f78,0x3462aaab)
--eeObj.WriteMem32(0x00158370,0x3c0243c1)
end

emuObj.AddVsyncHook(widescreen)