apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002d1708,0x080c9e98)
eeObj.WriteMem32(0x002d170c,0x00000000)

eeObj.WriteMem32(0x00327a60,0x3c013f40)
eeObj.WriteMem32(0x00327a64,0x4481f000)
eeObj.WriteMem32(0x00327a68,0xc6010068)
eeObj.WriteMem32(0x00327a6c,0xc602006c)
eeObj.WriteMem32(0x00327a70,0x461e0843)
eeObj.WriteMem32(0x00327a74,0xe6010068)
eeObj.WriteMem32(0x00327a78,0x080b45c4)
end

emuObj.AddVsyncHook(widescreen)