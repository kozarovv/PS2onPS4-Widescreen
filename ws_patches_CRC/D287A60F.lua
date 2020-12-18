apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Realm of the Dead (PAL-E) (SLES-54339)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010befc,0x3c013f61)
eeObj.WriteMem32(0x0010bf00,0x342147ae)
end

emuObj.AddVsyncHook(widescreen)