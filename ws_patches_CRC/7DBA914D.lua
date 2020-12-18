apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0018a5e8,0x080f1a24)
eeObj.WriteMem32(0x003c6890,0x3c013f40)
eeObj.WriteMem32(0x003c6894,0x4481f000)
eeObj.WriteMem32(0x003c6898,0xc6010068)
eeObj.WriteMem32(0x003c689c,0xc602006c)
eeObj.WriteMem32(0x003c68a0,0x461e0843)
eeObj.WriteMem32(0x003c68a4,0xe6010068)
eeObj.WriteMem32(0x003c68a8,0x0806297c)
end

emuObj.AddVsyncHook(widescreen)