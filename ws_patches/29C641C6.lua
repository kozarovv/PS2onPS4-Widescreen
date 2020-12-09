apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 00008244 00000000 43000146
eeObj.WriteMem32(0x0034d474,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)