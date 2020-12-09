apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x002a5490,0x3c033f40)

--Y-Fov
eeObj.WriteMem32(0x002a54e0,0x080e4c88)

eeObj.WriteMem32(0x00393220,0x46010002)
eeObj.WriteMem32(0x00393224,0x3c013faa)
eeObj.WriteMem32(0x00393228,0x3421aaab)
eeObj.WriteMem32(0x0039322c,0x4481f000)
eeObj.WriteMem32(0x00393230,0x461e0002)
eeObj.WriteMem32(0x00393234,0x080a9539)

--2D Y-Position
eeObj.WriteMem32(0x002a54f8,0x080e4c90)

eeObj.WriteMem32(0x00393240,0x46010002)
eeObj.WriteMem32(0x00393244,0x3c013faa)
eeObj.WriteMem32(0x00393248,0x3421aaab)
eeObj.WriteMem32(0x0039324c,0x4481f000)
eeObj.WriteMem32(0x00393250,0x461e0002)
eeObj.WriteMem32(0x00393254,0x080a953f)
end

emuObj.AddVsyncHook(widescreen)