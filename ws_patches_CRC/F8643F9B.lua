apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crash Bandicoot 4 - Sakuretsu! Majin Power (J)(v1.03) (SLPM-62114)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--42c81446 140074e6 380060e6
eeObj.WriteMem32(0x001125ec,0x0805bc76)

eeObj.WriteMem32(0x0016f1d8,0x4614c042)
eeObj.WriteMem32(0x0016f1dc,0x3c013f40)
eeObj.WriteMem32(0x0016f1e0,0x4481f000)
eeObj.WriteMem32(0x0016f1e4,0x461e0842)
eeObj.WriteMem32(0x0016f1e8,0x00000000)
eeObj.WriteMem32(0x0016f1ec,0x0804497c)

--Render fix
eeObj.WriteMem32(0x00114f50,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)