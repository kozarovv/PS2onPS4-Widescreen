apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Devil May Cry (PAL-M5) (SLES-50358) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x0010338c,0x3c013f40)
eeObj.WriteMem32(0x00103390,0x44810000)
eeObj.WriteMem32(0x00103398,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)