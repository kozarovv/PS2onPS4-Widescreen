apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Shadow Hearts 2 Covenant (PAL-M3) (SLES-82030) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00202cac,0x3c013f40)
eeObj.WriteMem32(0x00202cb0,0x44810000)
eeObj.WriteMem32(0x00202cb8,0x4600c602)
--
-- Render-Fix
eeObj.WriteMem32(0x0022531c,0x3c033fc0)
end

emuObj.AddVsyncHook(widescreen)