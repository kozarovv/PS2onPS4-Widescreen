apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas (NTSC-U by Arapapa)

--Gameplay 16:9 
eeObj.WriteMem32(0x0020ee98,0x4482e000)
eeObj.WriteMem32(0x0020eea8,0x460ce002)
eeObj.WriteMem32(0x0020eeac,0x4483e800)
eeObj.WriteMem32(0x0020eeb8,0x4600eb02)
eeObj.WriteMem32(0x0020eebc,0x00000000)
eeObj.WriteMem32(0x0020eec0,0x3c013f40)
eeObj.WriteMem32(0x0020eec4,0x4481f000)
eeObj.WriteMem32(0x0020eec8,0x461e0003)
eeObj.WriteMem32(0x0020eecc,0xe7a00048)
eeObj.WriteMem32(0x0020eed4,0x4614e002)
eeObj.WriteMem32(0x0020eed8,0x4600e846)
end

emuObj.AddVsyncHook(widescreen)