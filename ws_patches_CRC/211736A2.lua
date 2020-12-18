apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

--Zoom
--0040023c 00088244 00000000 02080046
--2a40023c abaa4234 02080046 02080046
eeObj.WriteMem32(0x00226abc,0x3c02402a)
eeObj.WriteMem32(0x00226ac0,0x3442aaab)
eeObj.WriteMem32(0x00226ac4,0x44820800)

--Y-Fov
--03080046 2400a0e7 2d200002
eeObj.WriteMem32(0x00226ae4,0x080bf5c4)

eeObj.WriteMem32(0x002fd710,0x46000803)
eeObj.WriteMem32(0x002fd714,0x3c013f40)
eeObj.WriteMem32(0x002fd718,0x4481f000)
eeObj.WriteMem32(0x002fd71c,0x461e0002)
eeObj.WriteMem32(0x002fd720,0x08089aba)
end

emuObj.AddVsyncHook(widescreen)