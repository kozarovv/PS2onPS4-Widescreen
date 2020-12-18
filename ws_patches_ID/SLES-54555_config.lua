apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Megami Tensei - Digital Devil Saga 2 (PAL-E) (SLES-54555)
--comment=Widescreen Hack (16:9) by ElHecht
-- 16:9
eeObj.WriteMem32(0x003539d4,0x3fc6d3a0)
eeObj.WriteMem32(0x00353d74,0x3fc6d3a0)
end

emuObj.AddVsyncHook(widescreen)