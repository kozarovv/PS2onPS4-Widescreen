apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kamen Rider Hibiki (J)(SLPS-20447)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Menu Zoom (2D)
--003f013c 00088144 e0ffbd27
--eeObj.WriteMem32(0x00145f68,0x3c013ec0)

--Menu Y-Fov (2D)
--426b0146 2000a28f
--eeObj.WriteMem32(0x00145f84,0x08030000)
--eeObj.WriteMem32(0x000c0000,0x46016b42)
--eeObj.WriteMem32(0x000c0004,0x3c013f40)
--eeObj.WriteMem32(0x000c0008,0x4481f000)
--eeObj.WriteMem32(0x000c000c,0x461e6b43)
--eeObj.WriteMem32(0x000c0010,0x080517e2)

--Cutscene Zoom
--803f013c 00a88144 01a50046
eeObj.WriteMem32(0x00130894,0x3c013fab)

/Cutscene Y-Fov
--00008044 32d00046
eeObj.WriteMem32(0x001308d8,0x08030008)
eeObj.WriteMem32(0x000c0020,0x44800000)
eeObj.WriteMem32(0x000c0024,0x3c013f40)
eeObj.WriteMem32(0x000c0028,0x4481f000)
eeObj.WriteMem32(0x000c002c,0x461ead42)
eeObj.WriteMem32(0x000c0030,0x0804c237)

--Gameplay X-Fov
--44808dc7 067c0046
eeObj.WriteMem32(0x0010362c,0x08030010)
eeObj.WriteMem32(0x000c0040,0xc78d8044)
eeObj.WriteMem32(0x000c0044,0x3c013f40)
eeObj.WriteMem32(0x000c0048,0x4481f000)
eeObj.WriteMem32(0x000c004c,0x461e6b42)
eeObj.WriteMem32(0x000c0050,0x08040d8c)

--------------------------------------
--Gameplay Zoom
--eeObj.WriteMem32(0x00103574,0x3c01443a)
end

emuObj.AddVsyncHook(widescreen)