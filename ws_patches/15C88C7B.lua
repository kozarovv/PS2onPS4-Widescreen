apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00143a50,0x3c013fdd)
eeObj.WriteMem32(0x00143a54,0x3421a51d)
eeObj.WriteMem32(0x0012b938,0x10000003)
eeObj.WriteMem32(0x0015f424,0x00000000)
eeObj.WriteMem32(0x001907e0,0x00000000)
eeObj.WriteMem32(0x001eb448,0x00000000)



end

emuObj.AddVsyncHook(widescreen)