apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Sangoku Musou 3 - Moushouden (K)(SLKA-25126)
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0013a220,0x3c0243d6)
eeObj.WriteMem32(0x0018f460,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)