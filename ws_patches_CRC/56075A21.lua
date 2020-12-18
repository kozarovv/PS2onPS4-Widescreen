apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

-- 16:9 (6d34003d cccc8c3f(*) cccc8c3f cccc8c3f cccc8c3f)
eeObj.WriteMem32(0x0050F274,0x3F533333)
end

emuObj.AddVsyncHook(widescreen)