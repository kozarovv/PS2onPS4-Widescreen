apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Capcom vs SNK 2 - Millionaire Fighting (J)(SLPM-65047)(PBPX-95201)
--comment=Widescreen Hack by nemesis2000 (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00144630,0x3c023faa)
eeObj.WriteMem32(0x001448a4,0x3c023faa)
eeObj.WriteMem32(0x00126480,0xac83003c)
eeObj.WriteMem32(0x00126484,0x3c033f40)
eeObj.WriteMem32(0x00126488,0x03e00008)
eeObj.WriteMem32(0x0012648c,0xac830000)
eeObj.WriteMem32(0x00125d7c,0x3c023fe3)


end

emuObj.AddVsyncHook(widescreen)