apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002b3b34,0x3c013b01)
eeObj.WriteMem32(0x002b3b38,0x34210000)

--Y-Fov
eeObj.WriteMem32(0x002b3bbc,0x3c013b35)
eeObj.WriteMem32(0x002b3bc0,0x3421fe54)

--Render fix
eeObj.WriteMem32(0x002c4f30,0x3c013d00)
eeObj.WriteMem32(0x002c4f34,0x34210000)
end

emuObj.AddVsyncHook(widescreen)