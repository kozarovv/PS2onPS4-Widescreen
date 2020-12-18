apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht
--
-- 16:9
eeObj.WriteMem32(0x0016c938,0x3c013fe3)
eeObj.WriteMem32(0x0016c93c,0x34218e38)
end

emuObj.AddVsyncHook(widescreen)