apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00248138,0x3c013ec0)
eeObj.WriteMem32(0x001f3c70,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)