apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Inaka Kurasi - Nan no Shima no Monogatari (Super Best Collection) [NTSC-J] (PBPX-95201) (SLPS-20499)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00172a7c,0x3c0243a8)

--Y-Fov
eeObj.WriteMem32(0x00172ab8,0x3c0243a8)
end

emuObj.AddVsyncHook(widescreen)