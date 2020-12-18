apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00325a28,0x3c023f40)

--Render fix
eeObj.WriteMem32(0x0023550c,0x3c023f2b)


end

emuObj.AddVsyncHook(widescreen)