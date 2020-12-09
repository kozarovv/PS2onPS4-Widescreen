apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SpinDrive Ping Pong (E)(SLES-52867)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--2040023c 00088244 a800a0c7
eeObj.WriteMem32(0x0019d1f4,0x3c024060)

--Y-Fov
--020a0746 100064c4
eeObj.WriteMem32(0x00226dd8,0x080b22a4)

eeObj.WriteMem32(0x002c8a90,0x46070a02)
eeObj.WriteMem32(0x002c8a94,0x3c013faa)
eeObj.WriteMem32(0x002c8a98,0x3421aaab)
eeObj.WriteMem32(0x002c8a9c,0x4481f000)
eeObj.WriteMem32(0x002c8aa0,0x461e4202)
eeObj.WriteMem32(0x002c8aa4,0x08089b77)


end

emuObj.AddVsyncHook(widescreen)