apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Monsters vs. Aliens (U)(SLUS-21870)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom (Menu and Cutscenes)
--003f023c ec0081c6
eeObj.WriteMem32(0x001abcf0,0x3c023f1b)

----Y-Fov (Menu and Cutscenes)
--03081546 1401a0e7
eeObj.WriteMem32(0x001abd6c,0x080a06f0)

eeObj.WriteMem32(0x00281bc0,0x46150803)
eeObj.WriteMem32(0x00281bc4,0x3c013faa)
eeObj.WriteMem32(0x00281bc8,0x3421aaab)
eeObj.WriteMem32(0x00281bcc,0x4481f800)
eeObj.WriteMem32(0x00281bd0,0x461f0002)
eeObj.WriteMem32(0x00281bd4,0x0806af5c)


--Zoom (Gameplay)
--003f023c 00008244 f00097c4
eeObj.WriteMem32(0x00233734,0x3c023f1b)

--Y-Fov (Gameplay)
eeObj.WriteMem32(0x0023373c,0x080a06e8)

eeObj.WriteMem32(0x00281ba0,0xc49700f0)
eeObj.WriteMem32(0x00281ba4,0x3c013f40)
eeObj.WriteMem32(0x00281ba8,0x4481f000)
eeObj.WriteMem32(0x00281bac,0x461ebdc2)
eeObj.WriteMem32(0x00281bb0,0x0808cdd0)
end

emuObj.AddVsyncHook(widescreen)