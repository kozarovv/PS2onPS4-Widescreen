apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=16:9 widescreen hack
--16:9 widescreen hack by 99skull
eeObj.WriteMem32(0x001AC2F8,0x3C023F19)
eeObj.WriteMem32(0x001AC300,0x3442999A)
end

emuObj.AddVsyncHook(widescreen)