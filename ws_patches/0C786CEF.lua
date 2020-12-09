apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00108144 00000000
eeObj.WriteMem32(0x0013bcb0,0x3c013ec0)

--Y-Fov
--2044023c 00608244 f043023c
eeObj.WriteMem32(0x0010f408,0x3c024456)

--------------------
--xx
--eeObj.WriteMem32(0x00136d70,0x3c013edd)
--eeObj.WriteMem32(0x0013b93c,0x3c013f40)
--eeObj.WriteMem32(0x0013c408,0x3c013edd)
--eeObj.WriteMem32(0x0014387c,0x3c013f40)
--eeObj.WriteMem32(0x0013b3b4,0x3c013fab)
--eeObj.WriteMem32(0x0013b468,0x3c013fab)
--eeObj.WriteMem32(0x0013b4d8,0x3c013f30)
--eeObj.WriteMem32(0x0013b4e0,0x3c013fab)
--??
--eeObj.WriteMem32(0x0013ba3c,0x3c013f30)
--Zoom
--eeObj.WriteMem32(0x0013c394,0x3c013edd)
--eeObj.WriteMem32(0x0013c410,0x3c01bedd)
end

emuObj.AddVsyncHook(widescreen)