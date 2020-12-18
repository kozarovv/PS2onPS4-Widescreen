apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Okami (PAL-M3) (SLES-54439) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x001974d4,0x3c014455)
eeObj.WriteMem32(0x00344864,0x3c014455)
end

emuObj.AddVsyncHook(widescreen)