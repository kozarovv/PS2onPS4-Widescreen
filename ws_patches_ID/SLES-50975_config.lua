apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Thing [PAL-M4] (SLES_509.75)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0016EC34,0x3C023FE3)
eeObj.WriteMem32(0x0016EC38,0x34428E38)
end

emuObj.AddVsyncHook(widescreen)