apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Daidassou - The Great Escape (J)(SLPS-25374)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--cc3a013c ccdcc2134
eeObj.WriteMem32(0x00344f8c,0x3c013b01)
eeObj.WriteMem32(0x00344f90,0x34210000)

--Y-Fov
--083b013c 889882134
eeObj.WriteMem32(0x00345014,0x3c013b35)
eeObj.WriteMem32(0x00345018,0x3421fe54)

--Render fix
--8e3c013c 36fa2134
eeObj.WriteMem32(0x0035598c,0x3c013d00)
eeObj.WriteMem32(0x00355990,0x34210000)

--------------------------------------------

--xx
--eeObj.WriteMem32(0x002bfe50,0x3c013f60)

--Zoom but ????
--eeObj.WriteMem32(0x002c0094,0x3c013fab)
--eeObj.WriteMem32(0x002c02c0,0x3c013fab)
--eeObj.WriteMem32(0x002ec220,0x3c013fff)
--eeObj.WriteMem32(0x003450cc,0x3c013f20)

--Screen Position X
--eeObj.WriteMem32(0x00344fa4,0x3c013f00)
--eeObj.WriteMem32(0x00344fcc,0x3c0143a0)

--Screen Size
--eeObj.WriteMem32(0x003450b4,0x3c013f20)

--xxx
--eeObj.WriteMem32(0x00195f80,0x44f00000)
--eeObj.WriteMem32(0x001978f8,0x44f00000)
--eeObj.WriteMem32(0x003419a8,0x44880000)
--eeObj.WriteMem32(0x0033d370,0x3c013fb0)
--eeObj.WriteMem32(0x00345134,0x3c013fb0)
--eeObj.WriteMem32(0x003451e4,0x3c013fb0)
--eeObj.WriteMem32(0x00345224,0x3c013fb0)
end

emuObj.AddVsyncHook(widescreen)