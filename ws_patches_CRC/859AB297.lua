apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0012BBA4,0x3C023F1E)
eeObj.WriteMem32(0x0012BBC8,0x3C023F0F)
end

emuObj.AddVsyncHook(widescreen)