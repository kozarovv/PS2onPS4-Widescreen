apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000
-- Ported to PAL, added 16:10 support (ElHecht)

-- 16:9
eeObj.WriteMem32(0x0011e95c,0x3c013f40)
eeObj.WriteMem32(0x0011e968,0x44810000)
eeObj.WriteMem32(0x0011e96c,0x4600c602)

-- 16:10
--eeObj.WriteMem32(0x0011e95c,0x3c013f55)
--eeObj.WriteMem32(0x0011e960,0x34215555)
--eeObj.WriteMem32(0x0011e968,0x44810000)
--eeObj.WriteMem32(0x0011e96c,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)