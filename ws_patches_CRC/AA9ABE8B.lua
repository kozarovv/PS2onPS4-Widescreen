apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Cars (K)(SCKA-20068)
--comment=Widescreen Hack by El_Patas (NTSC-K by Arapapa)

--Gameplay 16:9 

eeObj.WriteMem32(0x00116d48,0x3c023fab)
eeObj.WriteMem32(0x00116d50,0x3c033cae)
eeObj.WriteMem32(0x00116d54,0x34635555)

eeObj.WriteMem32(0x001d5e54,0x3c03bfab)
eeObj.WriteMem32(0x001d5e58,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)