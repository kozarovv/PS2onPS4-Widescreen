apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002114e0,0x08097028)
eeObj.WriteMem32(0x0025c0a0,0x3c013f40)
eeObj.WriteMem32(0x0025c0a4,0x4481f000)
eeObj.WriteMem32(0x0025c0a8,0xc6010068)
eeObj.WriteMem32(0x0025c0ac,0xc602006c)
eeObj.WriteMem32(0x0025c0b0,0x461e0843)
eeObj.WriteMem32(0x0025c0b4,0xe6010068)
eeObj.WriteMem32(0x0025c0b8,0x0808453a)





end

emuObj.AddVsyncHook(widescreen)