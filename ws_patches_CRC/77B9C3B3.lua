apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001d9d10,0x0807f820)
eeObj.WriteMem32(0x001d9d14,0x00000000)

eeObj.WriteMem32(0x001fe080,0x3c013f40)
eeObj.WriteMem32(0x001fe084,0x4481f000)
eeObj.WriteMem32(0x001fe088,0xc6010068)
eeObj.WriteMem32(0x001fe08c,0xc602006c)
eeObj.WriteMem32(0x001fe090,0x461e0843)
eeObj.WriteMem32(0x001fe094,0xe6010068)
eeObj.WriteMem32(0x001fe098,0x08076746)
end

emuObj.AddVsyncHook(widescreen)