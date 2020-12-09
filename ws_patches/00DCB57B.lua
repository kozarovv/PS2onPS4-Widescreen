apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001a5c10,0x3c1b3f40)
eeObj.WriteMem32(0x001a5d88,0x449b6800)
eeObj.WriteMem32(0x0019dc14,0x3c013f2b)

-- 16:10
--eeObj.WriteMem32(0x001a5c10,0x3c1b3f55)
--eeObj.WriteMem32(0x001a5c4c,0x377b5555)
--eeObj.WriteMem32(0x001a5d88,0x449b6800)
--eeObj.WriteMem32(0x0019dc14,0x3c013f1a)
end

emuObj.AddVsyncHook(widescreen)