apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bouken Shounen Club Gahou (J)(SLPS-25279)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0019a7cc,0x3c01bec0)

--Y-Fov
eeObj.WriteMem32(0x0019a894,0x0807e2e8)

eeObj.WriteMem32(0x001f8ba0,0xc6010074)
eeObj.WriteMem32(0x001f8ba4,0x3c013faa)
eeObj.WriteMem32(0x001f8ba8,0x3421aaab)
eeObj.WriteMem32(0x001f8bac,0x4481f000)
eeObj.WriteMem32(0x001f8bb0,0x461e0842)
eeObj.WriteMem32(0x001f8bb4,0x08066a26)

----------------------------------
--Zoom
--eeObj.WriteMem32(0x0010fb14,0x3c013f2b)
--eeObj.WriteMem32(0x0019b51c,0x3c013f48)
end

emuObj.AddVsyncHook(widescreen)