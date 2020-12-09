apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x00127bd4,0x3c033f40)

/Y-Fov
eeObj.WriteMem32(0x00134f78,0x3c033fe3)
eeObj.WriteMem32(0x00134f80,0x3c033fe3)

--Render fix
eeObj.WriteMem32(0x00152b10,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)