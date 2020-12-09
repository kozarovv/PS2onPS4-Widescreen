apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nitrobike (E)(SLES-55192)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00429f9c,0x3c013faa)
eeObj.WriteMem32(0x00429fa0,0x3421aaab)
eeObj.WriteMem32(0x00429fa8,0x4481f000)
eeObj.WriteMem32(0x00429fac,0x461ebdc2)

--Zoom
--003f013c 00608144 00009344 00000000 20008046
eeObj.WriteMem32(0x0039c03c,0x3c013f16)
end

emuObj.AddVsyncHook(widescreen)