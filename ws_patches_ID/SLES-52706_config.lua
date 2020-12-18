apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Mortal Kombat - Deception (PAL-M5) (SLES-52706) Widescreen Hack (16:9) by ElHecht
-- 16:9
eeObj.WriteMem32(0x01EB12C0,0x3F842256)
--eeObj.WriteMem32(0x01EB12C4,0x3FFBAF1E)
end

emuObj.AddVsyncHook(widescreen)