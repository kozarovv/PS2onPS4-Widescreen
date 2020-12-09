apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht
-- 16:9
eeObj.WriteMem32(0x003d2ce4,0x3c0143c0)
eeObj.WriteMem32(0x003d2ce8,0x44810800)
end

emuObj.AddVsyncHook(widescreen)