apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Naruto - Uzumaki Chronicles 2 (NTSC-U) (SLUS-21594) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x00203cc8,0x3c023f28)
eeObj.WriteMem32(0x00203ccc,0x3442f5c3)
eeObj.WriteMem32(0x00204580,0x3c023f28)
eeObj.WriteMem32(0x00204584,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)