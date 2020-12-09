apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rumble Racing [PAL-M3] (SLES_501.20)
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001549F0,0x3C023F40)
end

emuObj.AddVsyncHook(widescreen)