apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x01E2EDCC,0x3F340000)
-- eeObj.WriteMem32(0x01E2EDD0,0x3F000000)
end

emuObj.AddVsyncHook(widescreen)