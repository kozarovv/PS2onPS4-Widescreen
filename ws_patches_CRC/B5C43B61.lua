apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Thunder Force VI (J)(SLPM-55096)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f023c 8000a2c7
eeObj.WriteMem32(0x00132e1c,0x3c023f40)

--Zoom
--eeObj.WriteMem32(0x00132da8,0x3c023f00)
end

emuObj.AddVsyncHook(widescreen)