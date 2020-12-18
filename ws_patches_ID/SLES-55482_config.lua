apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Naruto - Ultimate Ninja 4 (PAL-M3) (SLES-55482) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00AD4F94,0x3F400000)
--eeObj.WriteMem32(0x00AD4F98,0x3F800000)
end

emuObj.AddVsyncHook(widescreen)