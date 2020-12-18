apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Naruto - Uzumaki Chronicles (PAL-M5) (SLES-54727) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x002da2a0,0x3c023f13)
eeObj.WriteMem32(0x002da2a4,0x3448d70a)
eeObj.WriteMem32(0x002daa50,0x3c023f13)
eeObj.WriteMem32(0x002daa54,0x3446d70a)
end

emuObj.AddVsyncHook(widescreen)