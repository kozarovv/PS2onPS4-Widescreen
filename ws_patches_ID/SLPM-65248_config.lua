apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Sangoku Musou 3 (J)(SLPM-65248)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00136d50,0x3c0243d6)
eeObj.WriteMem32(0x00183df0,0x3C023F2B)
end

emuObj.AddVsyncHook(widescreen)