apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x002E88A8,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)