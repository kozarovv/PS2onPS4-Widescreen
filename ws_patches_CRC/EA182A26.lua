apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=K-1 World Grand Prix - The Beast Attack! (J)(SLPM-65336)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x004595b4,0x3f2ccccd)
eeObj.WriteMem32(0x00459df0,0x3f2ccccd)
eeObj.WriteMem32(0x0045a414,0x3f2ccccd)
end

emuObj.AddVsyncHook(widescreen)