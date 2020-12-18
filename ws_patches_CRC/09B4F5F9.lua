apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x001382c4,0x3c023f19)
eeObj.WriteMem32(0x001382c8,0x3443999a)
end

emuObj.AddVsyncHook(widescreen)