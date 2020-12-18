apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x002724d8,0x3faaaaab)
eeObj.WriteMem32(0x002724e4,0x3faaaaab)
eeObj.WriteMem32(0x00180be0,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)