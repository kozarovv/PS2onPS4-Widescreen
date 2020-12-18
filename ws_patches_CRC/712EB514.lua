apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001dcaa8,0x08080388)
eeObj.WriteMem32(0x001dcaac,0x00000000)

eeObj.WriteMem32(0x00200e20,0x3c013f40)
eeObj.WriteMem32(0x00200e24,0x4481f000)
eeObj.WriteMem32(0x00200e28,0xc6010068)
eeObj.WriteMem32(0x00200e2c,0xc602006c)
eeObj.WriteMem32(0x00200e30,0x461e0843)
eeObj.WriteMem32(0x00200e34,0xe6010068)
eeObj.WriteMem32(0x00200e38,0x080772ac)
end

emuObj.AddVsyncHook(widescreen)