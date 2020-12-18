apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sonic Riders (K)(SLKA-25358)
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0044ed38,0x43000700)
eeObj.WriteMem32(0x00134e4c,0x3c023fab)


end

emuObj.AddVsyncHook(widescreen)