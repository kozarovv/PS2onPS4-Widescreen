apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002d94c4,0x3c1b3faa)
eeObj.WriteMem32(0x002d94d4,0x377baaab)
eeObj.WriteMem32(0x002d9304,0x449b9000)

-- 16:10
--eeObj.WriteMem32(0x002d94c4,0x3c1b3f99)
--eeObj.WriteMem32(0x002d94d4,0x377b999a)
--eeObj.WriteMem32(0x002d9304,0x449b9000)
end

emuObj.AddVsyncHook(widescreen)