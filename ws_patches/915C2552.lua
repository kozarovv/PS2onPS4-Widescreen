apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=La Pucelle (SLPM-64522)
--comment=Widescreen hack by El_Patas (NTSC-K by Arapapa)
 
--Gameplay 16:9

eeObj.WriteMem32(0x001082fc,0x3c013f40)
eeObj.WriteMem32(0x00108300,0x44810000)
eeObj.WriteMem32(0x00108308,0x4600c602)

eeObj.WriteMem32(0x004C4330,0x45700000)

--2D Characters fix
eeObj.WriteMem32(0x00130640,0x3c023fc0)
eeObj.WriteMem32(0x00130654,0x3c023fc0)
eeObj.WriteMem32(0x00130668,0x3c033fc0)
eeObj.WriteMem32(0x0013067c,0x3c023fc0)
end

emuObj.AddVsyncHook(widescreen)