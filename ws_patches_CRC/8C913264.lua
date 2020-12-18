apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sonic Unleashed (PAL-M5) (SLES-55380)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0038d71c,0x3c014340)
eeObj.WriteMem32(0x0038d720,0x3c1b008a)
eeObj.WriteMem32(0x0038d724,0xaf6143b0)
eeObj.WriteMem32(0x0038d728,0x03e00008)
eeObj.WriteMem32(0x00528cf4,0x3c023fab)
eeObj.WriteMem32(0x0043657c,0x3c024436)
eeObj.WriteMem32(0x007638c0,0x3faaaaab)

end

emuObj.AddVsyncHook(widescreen)