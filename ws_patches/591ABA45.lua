apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f023c 00088244 00000000 03080046 (1st)
eeObj.WriteMem32(0x00131cb0,0x3c023f40)

--Y-Fov
eeObj.WriteMem32(0x001324cc,0x08030010)
eeObj.WriteMem32(0x000c0040,0x46000802)
eeObj.WriteMem32(0x000c0044,0x3c1b3f40)
eeObj.WriteMem32(0x000c0048,0x449bf000)
eeObj.WriteMem32(0x000c004c,0x461e0003)
eeObj.WriteMem32(0x000c0050,0x0804c935)

--Render fix
eeObj.WriteMem32(0x0013ef70,0x3c023f40)

end

emuObj.AddVsyncHook(widescreen)