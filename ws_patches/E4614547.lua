apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kamen Rider Kabuto (J)(SLPS-20483)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Cutscene Zoom
--803f013c 00a88144 01a50046
eeObj.WriteMem32(0x0011b54c,0x3c013fab)

/Cutscene Y-Fov
--00008044 32d00046
eeObj.WriteMem32(0x0011b590,0x08030008)
eeObj.WriteMem32(0x000c0020,0x44800000)
eeObj.WriteMem32(0x000c0024,0x3c013f40)
eeObj.WriteMem32(0x000c0028,0x4481f000)
eeObj.WriteMem32(0x000c002c,0x461ead42)
eeObj.WriteMem32(0x000c0030,0x08046d65)

--Gameplay X-Fov
eeObj.WriteMem32(0x001980c4,0x08030010)
eeObj.WriteMem32(0x000c0040,0xc78d8c84)
eeObj.WriteMem32(0x000c0044,0x3c013f40)
eeObj.WriteMem32(0x000c0048,0x4481f000)
eeObj.WriteMem32(0x000c004c,0x461e6b42)
eeObj.WriteMem32(0x000c0050,0x08066032)

----------------------------------/
/Gameplay Zoom
--eeObj.WriteMem32(0x00108f30,0x3c014400)
--Menu Zoom
--eeObj.WriteMem32(0x00143f54,0x3c014400)
--Menu Zoom
--003f013c 00088144 e0ffbd27
--eeObj.WriteMem32(0x00135148,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)