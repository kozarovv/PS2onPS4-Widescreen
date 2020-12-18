apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=LEGO Star Wars: The Videogame [PAL] (SLES_531.94)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9 (Memory hack)
eeObj.WriteMem32(0x01F25E74,0x3F100000)
end

emuObj.AddVsyncHook(widescreen)