apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Version 1.01

-- 16:9 hack
eeObj.WriteMem32(0x0038C9F8,0x3fe38e38)
end

emuObj.AddVsyncHook(widescreen)