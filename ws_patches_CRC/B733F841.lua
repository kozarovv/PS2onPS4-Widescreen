apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fukuhara Ai no Takkyu Icchokusen (J)(SLPM-62505)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0026f07c,0x3c024060)

--Y-Fov
eeObj.WriteMem32(0x0021fb68,0x08047e34)

eeObj.WriteMem32(0x0011f8d0,0x46070a02)
eeObj.WriteMem32(0x0011f8d4,0x3c013faa)
eeObj.WriteMem32(0x0011f8d8,0x3421aaab)
eeObj.WriteMem32(0x0011f8dc,0x4481f000)
eeObj.WriteMem32(0x0011f8e0,0x461e4202)
eeObj.WriteMem32(0x0011f8e4,0x08087edb)

--------------------
--eeObj.WriteMem32(0x0021fabc,0x08047e34)
end

emuObj.AddVsyncHook(widescreen)