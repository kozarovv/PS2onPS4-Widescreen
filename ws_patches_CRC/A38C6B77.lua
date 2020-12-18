apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Codename Kids Next Door Operation VIDEOGAME [PAL-M4] (SLES_538.12)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x00C156A4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)