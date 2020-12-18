apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Technic Beat (J)(SLPS-25159)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
--7a44023c 00608244 f03e023c d7a34234 -> 3b44023c 00608244 203f023c 2f6d4234
eeObj.WriteMem32(0x002156c4,0x3c023f20)
eeObj.WriteMem32(0x002156c8,0x34426d2f)

--Zoom
eeObj.WriteMem32(0x002156bc,0x3c02443b)
end

emuObj.AddVsyncHook(widescreen)