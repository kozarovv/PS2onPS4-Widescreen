apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--680001c6 6c0002c6
eeObj.WriteMem32(0x001e6268,0x080a04ac)

eeObj.WriteMem32(0x002812b0,0x3c013f40)
eeObj.WriteMem32(0x002812b4,0x4481f000)
eeObj.WriteMem32(0x002812b8,0xc6010068)
eeObj.WriteMem32(0x002812bc,0xc602006c)
eeObj.WriteMem32(0x002812c0,0x461e0843)
eeObj.WriteMem32(0x002812c4,0xe6010068)
eeObj.WriteMem32(0x002812c8,0x0807989c)
end

emuObj.AddVsyncHook(widescreen)