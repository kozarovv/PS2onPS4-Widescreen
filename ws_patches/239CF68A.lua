apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht
-- 16:9
eeObj.WriteMem32(0x0027fa54,0x3c013f40)
eeObj.WriteMem32(0x0027fa58,0x44810000)
eeObj.WriteMem32(0x0027fa60,0x4600c602)
eeObj.WriteMem32(0x00183124,0x3c014430)
--
-- Compass
eeObj.WriteMem32(0x00425B00,0x43C00000)
end

emuObj.AddVsyncHook(widescreen)