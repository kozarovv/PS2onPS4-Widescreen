apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0017b260,0x3c013fe3)
eeObj.WriteMem32(0x0017b264,0x34218e39)
eeObj.WriteMem32(0x0019fee8,0x3c013fe3)
eeObj.WriteMem32(0x0019feec,0x34218e39)

-- 16:10
--eeObj.WriteMem32(0x0017b260,0x3c013fcc)
--eeObj.WriteMem32(0x0017b264,0x3421cccd)
--eeObj.WriteMem32(0x0019fee8,0x3c013fcc)
--eeObj.WriteMem32(0x0019feec,0x3421cccd)
end

emuObj.AddVsyncHook(widescreen)