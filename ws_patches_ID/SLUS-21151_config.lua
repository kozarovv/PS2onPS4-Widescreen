apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cars (U)(SLUS-21151)
--comment=Widescreen Hack by El_Patas (NTSC-U by Arapapa)

--Gameplay 16:9 


eeObj.WriteMem32(0x00116d48,0x3c023fab)
eeObj.WriteMem32(0x00116d50,0x3C033CAE)
eeObj.WriteMem32(0x00116d54,0x34635555)

--Render fix
eeObj.WriteMem32(0x001d5dc4,0x3c03bfab)
eeObj.WriteMem32(0x001d5dc8,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)