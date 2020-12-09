apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0029FB58,0x3C01435F)
eeObj.WriteMem32(0x004ACBA4,0x3FE38E39)
end

emuObj.AddVsyncHook(widescreen)