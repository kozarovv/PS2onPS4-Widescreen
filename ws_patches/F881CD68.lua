apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sonic Riders (PAL-M5) (SLES-53560)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0044eab8,0x43700000)
eeObj.WriteMem32(0x00134e4c,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)