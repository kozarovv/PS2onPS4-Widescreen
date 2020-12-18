apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0029c518,0x080b5d94)
eeObj.WriteMem32(0x0029c51c,0x00000000)

eeObj.WriteMem32(0x002d7650,0x3c013f40)
eeObj.WriteMem32(0x002d7654,0x4481f000)
eeObj.WriteMem32(0x002d7658,0xc6010068)
eeObj.WriteMem32(0x002d765c,0xc602006c)
eeObj.WriteMem32(0x002d7660,0x461e0843)
eeObj.WriteMem32(0x002d7664,0xe6010068)
eeObj.WriteMem32(0x002d7668,0x080a7148)
end

emuObj.AddVsyncHook(widescreen)