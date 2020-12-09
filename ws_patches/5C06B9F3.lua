apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov

eeObj.WriteMem32(0x00331100,0x08100950)
eeObj.WriteMem32(0x00402540,0x3c013f40)
eeObj.WriteMem32(0x00402544,0x4481f000)
eeObj.WriteMem32(0x00402548,0xc6010068)
eeObj.WriteMem32(0x0040254c,0xc602006c)
eeObj.WriteMem32(0x00402550,0x461e0843)
eeObj.WriteMem32(0x00402554,0xe6010068)
eeObj.WriteMem32(0x00402558,0x080cc442)
end

emuObj.AddVsyncHook(widescreen)