apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001c4290,0x3c01bf40)

--Render fix
eeObj.WriteMem32(0x0019d2b8,0x3c0144fa)

--Y-Fov
--eeObj.WriteMem32(0x001cf124,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)