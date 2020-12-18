apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Muppets Party Cruise (U)(SLUS-20635)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00008144 80680c46
eeObj.WriteMem32(0x0012424c,0x3c013f13)

--Y-Fov
--02210546 000085e4
eeObj.WriteMem32(0x001242d0,0x08030008)

eeObj.WriteMem32(0x000c0020,0x46052102)
eeObj.WriteMem32(0x000c0024,0x3c013faa)
eeObj.WriteMem32(0x000c0028,0x4481f000)
eeObj.WriteMem32(0x000c002c,0x461e2102)
eeObj.WriteMem32(0x000c0030,0x080490b5)

--2D fix
--83100046 0c0080ac
eeObj.WriteMem32(0x00124324,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46001083)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e1082)
eeObj.WriteMem32(0x000c0010,0x080490ca)

--Render fix
--003f013c 00008144 f0ffbd27 (2nd)
eeObj.WriteMem32(0x001243b0,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)