apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Backyard Football 2006 (U)(SLUS-20876)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x004f3c28,0x08190030)
eeObj.WriteMem32(0x006400c0,0xc4800068)
eeObj.WriteMem32(0x006400c4,0x3c013f40)
eeObj.WriteMem32(0x006400c8,0x4481f000)
eeObj.WriteMem32(0x006400cc,0x461e0003)
eeObj.WriteMem32(0x006400d0,0xe4800068)
eeObj.WriteMem32(0x006400d8,0x0813cf0b)

end

emuObj.AddVsyncHook(widescreen)