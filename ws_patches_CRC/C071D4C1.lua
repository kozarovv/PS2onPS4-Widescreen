apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Naruto - Ultimate Ninja 5 (PAL-M5) (SLES-55605) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00B3EF14,0x3F400000)
--eeObj.WriteMem32(0x00B3EF18,0x3F800000)
end

emuObj.AddVsyncHook(widescreen)