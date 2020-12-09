apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001439e8,0x3c013fdd)
eeObj.WriteMem32(0x001439ec,0x3421a51d)

eeObj.WriteMem32(0x0012b938,0x10000003)
eeObj.WriteMem32(0x0015f66c,0x00000000)
eeObj.WriteMem32(0x00190ce0,0x00000000)
eeObj.WriteMem32(0x001eb820,0x00000000)


end

emuObj.AddVsyncHook(widescreen)