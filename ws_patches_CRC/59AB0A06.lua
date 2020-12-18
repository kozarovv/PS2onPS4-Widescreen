apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x0026d7d0,0x080bc954)
eeObj.WriteMem32(0x002f2550,0x3c013f40)
eeObj.WriteMem32(0x002f2554,0x4481f000)
eeObj.WriteMem32(0x002f2558,0xc6010068)
eeObj.WriteMem32(0x002f255c,0xc602006c)
eeObj.WriteMem32(0x002f2560,0x461e0843)
eeObj.WriteMem32(0x002f2564,0xe6010068)
eeObj.WriteMem32(0x002f2568,0x0809b5f6)


------------------------------------------


--name box
--eeObj.WriteMem32(0x001a2964,0x3c014300)

--eeObj.WriteMem32(0x0020f548,0x3c0141d0)

--2D x-positrion
--eeObj.WriteMem32(0x001a2c5c,0x3c014080)
--eeObj.WriteMem32(0x001a2c64,0x3c014400)
--2D-POSITION
--eeObj.WriteMem32(0x001a2dac,0x00000000)


end

emuObj.AddVsyncHook(widescreen)