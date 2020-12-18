apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Lord of the Rings - The Two Towers (PAL-M3) (SLES-51252)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00107160,0x3c023fe3)
eeObj.WriteMem32(0x00107164,0x34428e39)
end

emuObj.AddVsyncHook(widescreen)