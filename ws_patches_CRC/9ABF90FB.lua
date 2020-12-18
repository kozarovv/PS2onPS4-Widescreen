apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Lord of the Rings: The Two Towers (PAL-Spain) (SLES_512.56)
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00107160,0x3C023FE3)
eeObj.WriteMem32(0x00107164,0x34428E39)
end

emuObj.AddVsyncHook(widescreen)