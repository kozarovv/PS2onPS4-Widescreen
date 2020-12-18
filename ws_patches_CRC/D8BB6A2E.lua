apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Ultimate Vol. 25: Chou-Saisoku! Zokusha King BU no BU [NTSC-J] (SLPM_626.16)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x0036B914,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)