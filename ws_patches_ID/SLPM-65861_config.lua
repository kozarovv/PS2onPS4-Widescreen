apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shinki Genso - Spectral Souls II (J)(SLPM-65861)
--comment= Widescreen Hack by Arapapa

-- Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x0023a4a4,0x3c033f19)
eeObj.WriteMem32(0x0023a4a8,0x3463999a)

--Render fix
eeObj.WriteMem32(0x0023a4c4,0x3c0343f7)

--All of 2D fix
eeObj.WriteMem32(0x0023b484,0x3c023f19)
eeObj.WriteMem32(0x0023b488,0x3442999a)
eeObj.WriteMem32(0x0023b524,0x3c023f19)
eeObj.WriteMem32(0x0023b528,0x3442999a)
eeObj.WriteMem32(0x0023b5c4,0x3c023f19)
eeObj.WriteMem32(0x0023b5c8,0x3442999a)
eeObj.WriteMem32(0x0023b664,0x3c023f19)
eeObj.WriteMem32(0x0023b668,0x3442999a)
eeObj.WriteMem32(0x0023b714,0x3c023f19)
eeObj.WriteMem32(0x0023b718,0x3442999a)
eeObj.WriteMem32(0x0023b75c,0x3c023f19)
eeObj.WriteMem32(0x0023b760,0x3442999a)

--2D X-position
eeObj.WriteMem32(0x002192c4,0x24647400)
eeObj.WriteMem32(0x0023b4ac,0x24647400)
eeObj.WriteMem32(0x0023b54c,0x24647400)
eeObj.WriteMem32(0x0023b5ec,0x24647400)
eeObj.WriteMem32(0x0023b68c,0x24647400)
eeObj.WriteMem32(0x0023b73c,0x24437400)
end

emuObj.AddVsyncHook(widescreen)