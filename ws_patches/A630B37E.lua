apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Metal Gear Solid 2 - Sons Of Liberty (PAL-M3) (SLES-50383) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x0011f230,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)