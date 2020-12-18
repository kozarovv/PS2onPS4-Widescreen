apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom (Gameplay)
--003f013c 00608144
eeObj.WriteMem32(0x0019c130,0x3c013f1b)

--Y-Fov (Gameplay)
--82100046 000002e6
eeObj.WriteMem32(0x0019c17c,0x080eb428)

eeObj.WriteMem32(0x003ad0a0,0x46001082)
eeObj.WriteMem32(0x003ad0a4,0x3c013f40)
eeObj.WriteMem32(0x003ad0a8,0x4481f000)
eeObj.WriteMem32(0x003ad0ac,0x461e1082)
eeObj.WriteMem32(0x003ad0b0,0x08067060)

--Black bar fix (Gameplay)
--803f013c 00008144 34100046 00000000
eeObj.WriteMem32(0x001c2e10,0x3c013a00)

--X-Fov (Menu, Text and Cutscene)
--0000acc7 803f013c (2nd)
eeObj.WriteMem32(0x002ea5c4,0x080eb42d)

eeObj.WriteMem32(0x003ad0b4,0xc7ac0000)
eeObj.WriteMem32(0x003ad0b8,0x3c013faa)
eeObj.WriteMem32(0x003ad0bc,0x3421aaab)
eeObj.WriteMem32(0x003ad0c0,0x4481f000)
eeObj.WriteMem32(0x003ad0c4,0x461e6302)
eeObj.WriteMem32(0x003ad0c8,0x080ba972)
end

emuObj.AddVsyncHook(widescreen)