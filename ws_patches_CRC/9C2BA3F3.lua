apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Magical Sports 2000 Koushien (J)(SLPS-20036)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov

eeObj.WriteMem32(0x002c8c60,0x080cb8c4)
eeObj.WriteMem32(0x002c8c64,0x00000000)

eeObj.WriteMem32(0x0032e310,0x3c013f40)
eeObj.WriteMem32(0x0032e314,0x4481f000)
eeObj.WriteMem32(0x0032e318,0xc6010068)
eeObj.WriteMem32(0x0032e31c,0xc602006c)
eeObj.WriteMem32(0x0032e320,0x461e0843)
eeObj.WriteMem32(0x0032e324,0xe6010068)
eeObj.WriteMem32(0x0032e328,0x080b231a)
end

emuObj.AddVsyncHook(widescreen)