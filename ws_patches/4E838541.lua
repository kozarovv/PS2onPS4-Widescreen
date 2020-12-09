apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas (Causes a glitch in the upper left HUD panel)

--Gameplay 16:9
eeObj.WriteMem32(0x0021E414,0x3C014440)

--Render fix
eeObj.WriteMem32(0x0021271C,0x3C013C2E)
end

emuObj.AddVsyncHook(widescreen)