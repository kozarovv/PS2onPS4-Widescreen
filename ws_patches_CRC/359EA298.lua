apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x0058c6d4,0x3FE38E2A)

--Zoom
--0e3c013c 2efa2134 (1st)
eeObj.WriteMem32(0x002ebe64,0x3c013c28)
--eeObj.WriteMem32(0x002ebe68,0x3421a0ba)

--X-Fov (Needs render Fix)
--eeObj.WriteMem32(0x002ebf6c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)