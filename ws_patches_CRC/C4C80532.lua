apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=La Pucelle - Hikari no Seijou Densetsu (J) (v1.04) (SLPS-20167)
--comment=Widescreen hack by El_Patas (NTSC-J by Arapapa)
 
--Gameplay 16:9

eeObj.WriteMem32(0x0020544c,0x3c013f40)
eeObj.WriteMem32(0x00205450,0x44810000)
eeObj.WriteMem32(0x00205458,0x4600c602)

eeObj.WriteMem32(0x00539270,0x45700000)

--2D Characters fix
--0040033c 00088344 f400a0c7
eeObj.WriteMem32(0x002c4738,0x3c033fc0)
eeObj.WriteMem32(0x002c474c,0x3c023fc0)
eeObj.WriteMem32(0x002c4760,0x3c023fc0)
eeObj.WriteMem32(0x002c4774,0x3c023fc0)
end

emuObj.AddVsyncHook(widescreen)