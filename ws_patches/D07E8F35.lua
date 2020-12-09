apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Tekken Tag Tournament (PAL-M5) (SCES-50001) Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x0034b014,0x3c013f40)
eeObj.WriteMem32(0x0034b018,0x44810000)
eeObj.WriteMem32(0x0034b020,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)