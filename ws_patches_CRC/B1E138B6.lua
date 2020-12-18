apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Sangoku Musou 5 Special [Disc1of2](J)(SLPM-55082)
--comment=Widescreen hack by 99skul (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0014703c,0x3c024082)
eeObj.WriteMem32(0x00147b14,0x3c024082)
eeObj.WriteMem32(0x001471d0,0x3c0543a0)
end

emuObj.AddVsyncHook(widescreen)