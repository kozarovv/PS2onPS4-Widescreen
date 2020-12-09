apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Great Escape (U)(SLUS-20670)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002b89cc,0x3c013b01)
eeObj.WriteMem32(0x002b89d0,0x34210000)

--Y-Fov
eeObj.WriteMem32(0x002b8a54,0x3c013b35)
eeObj.WriteMem32(0x002b8a58,0x3421fe54)

--Render fix
eeObj.WriteMem32(0x002ca178,0x3c013d00)
eeObj.WriteMem32(0x002ca17c,0x34210000)
end

emuObj.AddVsyncHook(widescreen)