apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Harry Potter and The Chamber of Secrets (U)[SLUS-20576]
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x004ca798,0x3c013f24)
eeObj.WriteMem32(0x004ca79c,0x34210000)

--Y-Fov
eeObj.WriteMem32(0x004e8eb0,0x3c013fe3)
eeObj.WriteMem32(0x004e8eb4,0x34218e2a)

--Button fix
eeObj.WriteMem32(0x0031cb24,0x3c013fd0)
eeObj.WriteMem32(0x0031cb28,0x342197af)

--Font Y-Fov
eeObj.WriteMem32(0x00541894,0x3B0882F1)

--Font Y-Position
eeObj.WriteMem32(0x005418b4,0xbf000000)

--Font Zoom
eeObj.WriteMem32(0x005418bc,0x3faaaaab)

--Widen HUD to hide icons
eeObj.WriteMem32(0x005E9F30,0x3F95C28F)
end

emuObj.AddVsyncHook(widescreen)