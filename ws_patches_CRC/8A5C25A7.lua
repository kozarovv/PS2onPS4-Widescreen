apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metal Gear Solid 3: Subsistence [PAL-Spain] (SLES_820.48)
--comment=Widescreen hack by El_Patas

--No funciona en la PS2, para poder jugar este juego en pantalla panoramica en
--la PS2 se deben usar los codigos de PS2RD.

--Gameplay 16:9
eeObj.WriteMem32(0x00205D4C,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)