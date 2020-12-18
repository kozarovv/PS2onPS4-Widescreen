apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Naruto - Ultimate Ninja 2 (PAL-M5) (SLES-54878) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00A70200,0x3F400000)
--eeObj.WriteMem32(0x00A70204,0x3F800000)
end

emuObj.AddVsyncHook(widescreen)