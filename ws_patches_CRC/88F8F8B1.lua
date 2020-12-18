apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00008144 1000b07f
eeObj.WriteMem32(0x0019d314,0x3c013f10)

--Y-Fov
--aaaaaa3f 04000000
eeObj.WriteMem32(0x00260ba8,0x3FE38E2A)
end

emuObj.AddVsyncHook(widescreen)