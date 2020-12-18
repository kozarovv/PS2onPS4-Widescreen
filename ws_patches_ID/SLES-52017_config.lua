apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Lord of the Rings - The Return of the King (PAL-M5) (SLES-52017)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0014b13c,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)