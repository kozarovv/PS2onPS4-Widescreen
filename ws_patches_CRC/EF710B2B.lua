apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Space Channel 5 - Part 2 (PAL-M5) (SCES-50612)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001182f8,0x3c013f40)
eeObj.WriteMem32(0x00118550,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)