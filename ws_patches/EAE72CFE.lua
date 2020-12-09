apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cartoon Network Racing (U)(SLUS-21438)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--840041c4 003f013c 00608144
--840041c4 173f013c 00608144
eeObj.WriteMem32(0x0033f0b4,0x3c013f17)

--Y-Fov
--83100046 4c00023c
eeObj.WriteMem32(0x0033f100,0x080e2d60)

eeObj.WriteMem32(0x0038b580,0x46001083)
eeObj.WriteMem32(0x0038b584,0x3c013faa)
eeObj.WriteMem32(0x0038b588,0x3421aaab)
eeObj.WriteMem32(0x0038b58c,0x4481f000)
eeObj.WriteMem32(0x0038b590,0x461e1082)
eeObj.WriteMem32(0x0038b594,0x080cfc41)
end

emuObj.AddVsyncHook(widescreen)