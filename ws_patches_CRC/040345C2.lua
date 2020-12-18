apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa/ElHecht

-- 16:9
eeObj.WriteMem32(0x0012a268,0x0811687c)
eeObj.WriteMem32(0x0012a26c,0x00000000)
eeObj.WriteMem32(0x0012a270,0x00000000)

eeObj.WriteMem32(0x0045a1f0,0x3c013f40)
eeObj.WriteMem32(0x0045a1f4,0x4481f000)
eeObj.WriteMem32(0x0045a1f8,0x461ef042)
eeObj.WriteMem32(0x0045a1fc,0xe6010034)
eeObj.WriteMem32(0x0045a200,0xc7a10020)
eeObj.WriteMem32(0x0045a204,0x461e0843)
eeObj.WriteMem32(0x0045a208,0xe7a10020)
eeObj.WriteMem32(0x0045a20c,0x0804a89c)

eeObj.WriteMem32(0x00141ea4,0x3c023f2b)
end

emuObj.AddVsyncHook(widescreen)