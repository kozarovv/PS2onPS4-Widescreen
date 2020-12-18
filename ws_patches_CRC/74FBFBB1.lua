apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x0026e0a8,0x080b0ea4)
eeObj.WriteMem32(0x002c3a90,0x3c013f40)
eeObj.WriteMem32(0x002c3a94,0x4481f000)
eeObj.WriteMem32(0x002c3a98,0xc6010068)
eeObj.WriteMem32(0x002c3a9c,0xc602006c)
eeObj.WriteMem32(0x002c3aa0,0x461e0843)
eeObj.WriteMem32(0x002c3aa4,0xe6010068)
eeObj.WriteMem32(0x002c3aa8,0x0809b82c)
end

emuObj.AddVsyncHook(widescreen)