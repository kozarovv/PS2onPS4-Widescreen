apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht
-- 16:9
eeObj.WriteMem32(0x002bd698,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)