apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00424fd0,0x43400000)

--Render fix
eeObj.WriteMem32(0x00424fdc,0x3f100000)
end

emuObj.AddVsyncHook(widescreen)