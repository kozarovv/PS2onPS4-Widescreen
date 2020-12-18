apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pro Evolution Soccer 4 [PAL-M4] (SLES_527.60)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x002D7F40,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00125F74,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)