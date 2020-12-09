apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00591E00,0x3FE37119)
eeObj.WriteMem32(0x00591DFC,0x3FE37119)
end

emuObj.AddVsyncHook(widescreen)