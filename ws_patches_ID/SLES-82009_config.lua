apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Metal Gear Solid 2 - Substance (PAL-M5) (SLES-82009) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x0011ffd0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)