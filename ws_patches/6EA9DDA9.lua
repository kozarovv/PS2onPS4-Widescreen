apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x01140300,0x3f400000)
eeObj.WriteMem32(0x01E394C0,0x01aa0280)
eeObj.WriteMem32(0x01E394C4,0x000c0000)

-- 16:10
--eeObj.WriteMem32(0x01140300,0x3f555555)
--eeObj.WriteMem32(0x01E394C0,0x01800280)
--eeObj.WriteMem32(0x01E394C4,0x00200000)
end

emuObj.AddVsyncHook(widescreen)