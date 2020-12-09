apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 2b00103c
eeObj.WriteMem32(0x00178bc4,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)