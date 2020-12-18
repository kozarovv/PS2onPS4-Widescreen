apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dark Angel - Vampire Apocalpse (K)(SLPM-64537)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--2400a0c7 3000a38f 000060e4
eeObj.WriteMem32(0x0021d45c,0x080836c8)

eeObj.WriteMem32(0x0020db20,0xc7a00024)
eeObj.WriteMem32(0x0020db24,0x3c013f40)
eeObj.WriteMem32(0x0020db28,0x4481f000)
eeObj.WriteMem32(0x0020db2c,0x461e0002)
eeObj.WriteMem32(0x0020db30,0x08087518)
end

emuObj.AddVsyncHook(widescreen)