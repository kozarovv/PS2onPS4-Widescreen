apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Devil Kings (PAL-M5) (SLES-53870) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00130d5c,0x3c013f19)
eeObj.WriteMem32(0x00130d60,0x3421999a)
eeObj.WriteMem32(0x001bb2c0,0x3c013f19)
eeObj.WriteMem32(0x001bb2c4,0x3421999a)
--eeObj.WriteMem32(0x0057A954,0x44250000)
end

emuObj.AddVsyncHook(widescreen)