apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x004d6f40,0x3c023f40)

--Render fix
eeObj.WriteMem32(0x004d6f58,0x3c0243ab)

end

emuObj.AddVsyncHook(widescreen)