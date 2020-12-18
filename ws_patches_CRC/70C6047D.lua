apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa/ElHecht

-- 16:9
eeObj.WriteMem32(0x001298a8,0x081165c0)
eeObj.WriteMem32(0x001298ac,0x00000000)
eeObj.WriteMem32(0x001298b0,0x00000000)

eeObj.WriteMem32(0x00459700,0x3c013f40)
eeObj.WriteMem32(0x00459704,0x4481f000)
eeObj.WriteMem32(0x00459708,0x461ef042)
eeObj.WriteMem32(0x0045970c,0xe6010034)
eeObj.WriteMem32(0x00459710,0xc7a10020)
eeObj.WriteMem32(0x00459714,0x461e0843)
eeObj.WriteMem32(0x00459718,0xe7a10020)
eeObj.WriteMem32(0x0045971c,0x0804a62c)

eeObj.WriteMem32(0x001414e4,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)