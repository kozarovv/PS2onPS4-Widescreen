apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001f3168,0x08046994)
eeObj.WriteMem32(0x001f316c,0x00000000)

eeObj.WriteMem32(0x0011a650,0x3c013f40)
eeObj.WriteMem32(0x0011a654,0x4481f000)
eeObj.WriteMem32(0x0011a658,0xc6010068)
eeObj.WriteMem32(0x0011a65c,0xc602006c)
eeObj.WriteMem32(0x0011a660,0x461e0843)
eeObj.WriteMem32(0x0011a664,0xe6010068)
eeObj.WriteMem32(0x0011a668,0x0807cc5c)
end

emuObj.AddVsyncHook(widescreen)