apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=City Soccer Challenge (E)(SLES-53343)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00162dcc,0x3c01bf2a)
eeObj.WriteMem32(0x00162dd4,0x3421aaab)
end

emuObj.AddVsyncHook(widescreen)