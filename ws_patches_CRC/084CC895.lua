apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom (Menu and Cutscenes)
--003f023c ec0081c6
eeObj.WriteMem32(0x001abd20,0x3c023f1b)

----Y-Fov (Menu and Cutscenes)
--03081546 1401a0e7
eeObj.WriteMem32(0x001abd9c,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46150803)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f800)
eeObj.WriteMem32(0x000c0010,0x461f0002)
eeObj.WriteMem32(0x000c0014,0x0806af68)


--Zoom (Gameplay)
--003f023c 00008244 f00097c4
eeObj.WriteMem32(0x00233764,0x3c023f1b)

--Y-Fov (Gameplay)
eeObj.WriteMem32(0x0023376c,0x08030008)

eeObj.WriteMem32(0x000c0020,0xc49700f0)
eeObj.WriteMem32(0x000c0024,0x3c013f40)
eeObj.WriteMem32(0x000c0028,0x4481f000)
eeObj.WriteMem32(0x000c002c,0x461ebdc2)
eeObj.WriteMem32(0x000c0030,0x0808cddc)
end

emuObj.AddVsyncHook(widescreen)