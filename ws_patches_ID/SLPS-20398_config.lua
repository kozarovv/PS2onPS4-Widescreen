apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=La Pucelle: Hikari no Seijo Densetsu Nishuu 2-Shu-me hajimemashita (J)(SLPS-20398)
--comment=Widescreen hack by El_Patas (NTSC-J by Arapapa)
 
--Gameplay 16:9

eeObj.WriteMem32(0x00108b8c,0x3c013f40)
eeObj.WriteMem32(0x00108b90,0x44810000)
eeObj.WriteMem32(0x00108b98,0x4600c602)

eeObj.WriteMem32(0x004C6340,0x45700000)

--2D Characters fix
--0040023c 00088244 f400a0c7
eeObj.WriteMem32(0x00138170,0x3c023fc0)
eeObj.WriteMem32(0x00138184,0x3c033fc0)
eeObj.WriteMem32(0x00138198,0x3c023fc0)
eeObj.WriteMem32(0x001381ac,0x3c023fc0)
end

emuObj.AddVsyncHook(widescreen)