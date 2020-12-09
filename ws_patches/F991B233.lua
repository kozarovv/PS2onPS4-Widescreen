apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Demon Chaos (PAL-M5) (SLES-54305)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0017a87c,0x3c023f80)
eeObj.WriteMem32(0x0017a880,0x344a0000)
end

emuObj.AddVsyncHook(widescreen)