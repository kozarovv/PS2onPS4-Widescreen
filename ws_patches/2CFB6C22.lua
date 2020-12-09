apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0019fd10,0x080795f0)
eeObj.WriteMem32(0x001e57c0,0x3c013f40)
eeObj.WriteMem32(0x001e57c4,0x4481f000)
eeObj.WriteMem32(0x001e57c8,0xc6010068)
eeObj.WriteMem32(0x001e57cc,0xc602006c)
eeObj.WriteMem32(0x001e57d0,0x461e0843)
eeObj.WriteMem32(0x001e57d4,0xe6010068)
eeObj.WriteMem32(0x001e57d8,0x08067f46)
end

emuObj.AddVsyncHook(widescreen)