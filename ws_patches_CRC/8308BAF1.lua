apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by El_Patas

--Gameplay 16:9 P1 Screen
eeObj.WriteMem32(0x0030AD90,0x3FA1C40E)
end

emuObj.AddVsyncHook(widescreen)