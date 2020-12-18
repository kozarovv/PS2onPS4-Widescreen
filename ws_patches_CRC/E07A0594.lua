apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MLB SlugFest 2003 (U)(SLUS-20049)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001e9a88,0x080c4c44)
eeObj.WriteMem32(0x00313110,0xc4800068)
eeObj.WriteMem32(0x00313114,0x3c013f40)
eeObj.WriteMem32(0x00313118,0x4481f000)
eeObj.WriteMem32(0x0031311c,0x461e0003)
eeObj.WriteMem32(0x00313120,0xe4800068)
eeObj.WriteMem32(0x00313124,0x0807a6a3)
end

emuObj.AddVsyncHook(widescreen)