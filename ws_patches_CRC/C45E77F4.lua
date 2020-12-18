apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kengo 3 (K)(SLKA-25199)
--comment=Widescreen hack by El_Patas (NTSC-K by Arapapa)
 
--Gameplay 16:9 (Memory hack)
eeObj.WriteMem32(0x00868E78,0x3F400000)

--Render fix (ELF hack)
eeObj.WriteMem32(0x00138544,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)