apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=World Soccer Winning Eleven 8: International [NTSC-U] (SLUS_211.17)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x002D7E30,0x3FAAAAAB)

--Render fix
eeObj.WriteMem32(0x00126004,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)