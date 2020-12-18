apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Family Guy (SLUS-20718)
--comment=Widescreen update by Brandondorf9999

-----
eeObj.WriteMem32(0x0011B3A8,0x00000000)
eeObj.WriteMem32(0x0011B3BC,0x3C013F80)
eeObj.WriteMem32(0x0011B3C0,0x34210000)
end

emuObj.AddVsyncHook(widescreen)