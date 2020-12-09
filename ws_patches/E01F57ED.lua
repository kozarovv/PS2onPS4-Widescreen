apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=LEGO Batman: The Video Game [PAL] (SLES_551.35)
--comment=Widescreen hack by El_Patas

--El parche funciona bien para la parte jugable, aunque como efecto negativo provoca que
--tengan un gran zoom el men principal y las escenas cinemticas.

--Gameplay 16:9
eeObj.WriteMem32(0x0033DE44,0x00000A01)
eeObj.WriteMem32(0x00615710,0x00000A01)
eeObj.WriteMem32(0x0033DD6C,0x3C013F40)
end

emuObj.AddVsyncHook(widescreen)