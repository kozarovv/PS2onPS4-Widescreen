apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Harry Potter to Himitsu no Heya(Coca Cola Original version) (J)(SLPM-68005)
--gametitle=Harry Potter and The Chamber of Secrets (K)(SLPM-64528)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x004ca808,0x3c013f24)
eeObj.WriteMem32(0x004ca80c,0x34210000)

--Y-Fov
eeObj.WriteMem32(0x004e8f30,0x3c013fe3)
eeObj.WriteMem32(0x004e8f34,0x34218e2a)

--Button fix
eeObj.WriteMem32(0x0031cb9c,0x3c013fd0)
eeObj.WriteMem32(0x0031cba0,0x342197af)


--Font Y-Fov
eeObj.WriteMem32(0x00541914,0x3B0882F1)

--Font Y-Position
eeObj.WriteMem32(0x00541934,0xbf000000)

--Font Zoom
eeObj.WriteMem32(0x0054193c,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)