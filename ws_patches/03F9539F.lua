apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Shadow Hearts 3 - From The New World (PAL-E) (SLES-54711) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00378d1c,0x3c013f40)
eeObj.WriteMem32(0x00378d20,0x44810000)
eeObj.WriteMem32(0x00378d28,0x4600c602)
--
-- Render-Fix
eeObj.WriteMem32(0x00208b4c,0x3c033fc0)
end

emuObj.AddVsyncHook(widescreen)