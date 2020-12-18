apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Virtua Fighter 4 (PAL-M5) (SCES-50759)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00271614,0x3c194455)
eeObj.WriteMem32(0x00271618,0x37395555)
eeObj.WriteMem32(0x0027163c,0x44991800)
eeObj.WriteMem32(0x0024c344,0x3c014456)
end

emuObj.AddVsyncHook(widescreen)