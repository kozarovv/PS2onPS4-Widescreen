apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crimson Tears SLUS_209.48
--comment=Widescreen Hack

--aabf023c 00008544 abaa4334
eeObj.WriteMem32(0x001bcb98,0x3c02bfe3)
eeObj.WriteMem32(0x001bcba0,0x34438e39)
end

emuObj.AddVsyncHook(widescreen)