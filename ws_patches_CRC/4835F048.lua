apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom (Gameplay)
--003f013c 00608144
eeObj.WriteMem32(0x0018cd58,0x3c013f1b)

--Y-Fov (Gameplay)
--82100046 000002e6
eeObj.WriteMem32(0x0018cda4,0x080dee6c)

eeObj.WriteMem32(0x0037b9b0,0x46001082)
eeObj.WriteMem32(0x0037b9b4,0x3c013f40)
eeObj.WriteMem32(0x0037b9b8,0x4481f000)
eeObj.WriteMem32(0x0037b9bc,0x461e1082)
eeObj.WriteMem32(0x0037b9c0,0x0806336a)

--Black bar fix (Gameplay)
--803f013c 00008144 34100046 00000000
eeObj.WriteMem32(0x001af498,0x3c013a00)

--X-Fov (Menu,Text and Cutscene)
--0000acc7 803f013c (2nd)
eeObj.WriteMem32(0x002bbf24,0x080dee74)

eeObj.WriteMem32(0x0037b9d0,0xc7ac0000)
eeObj.WriteMem32(0x0037b9d4,0x3c013faa)
eeObj.WriteMem32(0x0037b9d8,0x3421aaab)
eeObj.WriteMem32(0x0037b9dc,0x4481f000)
eeObj.WriteMem32(0x0037b9e0,0x461e6302)
eeObj.WriteMem32(0x0037b9e4,0x080aefca)
end

emuObj.AddVsyncHook(widescreen)