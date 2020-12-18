apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hulk (J)(SLPS-25272)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--c3b00046 
eeObj.WriteMem32(0x004baec8,0x081345f8)

eeObj.WriteMem32(0x004d17e0,0x4600b0c3)
eeObj.WriteMem32(0x004d17e4,0x3c013f40)
eeObj.WriteMem32(0x004d17e8,0x4481f000)
eeObj.WriteMem32(0x004d17ec,0x461e18c2)
eeObj.WriteMem32(0x004d17f0,0x0812ebb3)

--Render fix
--003f013c 00608144 3700026a
eeObj.WriteMem32(0x003d666c,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)