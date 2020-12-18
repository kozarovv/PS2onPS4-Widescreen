apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Scooby-Doo! Mystery Mayhem (U)(SLUS-20701)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--43000146 0400048e
eeObj.WriteMem32(0x001978a0,0x0809fa4c)

eeObj.WriteMem32(0x0027e930,0x46010043)
eeObj.WriteMem32(0x0027e934,0x3c013f40)
eeObj.WriteMem32(0x0027e938,0x4481f000)
eeObj.WriteMem32(0x0027e93c,0x461e0842)
eeObj.WriteMem32(0x0027e940,0x08065e29)
end

emuObj.AddVsyncHook(widescreen)