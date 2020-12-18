apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen Hack (16:9)

-- 16:9
-- 613f023c af474234 (search twice)
eeObj.WriteMem32(0x001ed2d8,0x3c023f28)
eeObj.WriteMem32(0x001ed2dc,0x3442f5c3)
eeObj.WriteMem32(0x001ed970,0x3c023f28)
eeObj.WriteMem32(0x001ed974,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)