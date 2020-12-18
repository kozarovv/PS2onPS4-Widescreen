apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x001D3158,0x3C023F19)
eeObj.WriteMem32(0x001D315C,0x3442AAAB)
end

emuObj.AddVsyncHook(widescreen)