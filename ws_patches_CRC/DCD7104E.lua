apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Michigan - Report from Hell (PAL-M4) (SLES-53073)
--comment=Widescreen hack by nemesis2000
-- Added conditions for PAL50 and PAL60 (ElHecht)

-- 16:9
eeObj.WriteMem32(0x00011450,0x0029c3b8)
eeObj.WriteMem32(0x001a70d0,0x240400c0)

eeObj.WriteMem32(0x00011446,0x0029c3b8)
eeObj.WriteMem32(0x001a70d0,0x240400a8)

eeObj.WriteMem32(0x00184df0,0x3c023f06)
end

emuObj.AddVsyncHook(widescreen)