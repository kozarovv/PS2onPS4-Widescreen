apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Space Channel 5 (PAL-M5) (SCES-50611)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0011eecc,0x3c013f40)
eeObj.WriteMem32(0x0011eddc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)