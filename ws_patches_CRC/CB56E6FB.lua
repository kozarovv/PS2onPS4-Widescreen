apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kengo 3 [NTSC-J] (SLPM_657.00)
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9 (Memory hack)
eeObj.WriteMem32(0x00868E38,0x3F400000)

--Render fix (ELF hack)
eeObj.WriteMem32(0x001383A4,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)