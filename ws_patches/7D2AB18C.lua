apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov

--Gameplay
eeObj.WriteMem32(0x001520b0,0x3c023f28)
eeObj.WriteMem32(0x001520b8,0x3442f5c3)

--Event
eeObj.WriteMem32(0x0015218c,0x3c023f28)
eeObj.WriteMem32(0x00152190,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)