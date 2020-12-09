apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0010e7f8,0x080a6604)
eeObj.WriteMem32(0x0010e7fc,0x00000000)

eeObj.WriteMem32(0x00299810,0x3c013f40)
eeObj.WriteMem32(0x00299814,0x4481f000)
eeObj.WriteMem32(0x00299818,0xc6010068)
eeObj.WriteMem32(0x0029981c,0xc602006c)
eeObj.WriteMem32(0x00299820,0x461e0843)
eeObj.WriteMem32(0x00299824,0xe6010068)
eeObj.WriteMem32(0x00299828,0x08043a00)
end

emuObj.AddVsyncHook(widescreen)