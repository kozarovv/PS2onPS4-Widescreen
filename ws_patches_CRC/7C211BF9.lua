apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00008144 7000b07f
eeObj.WriteMem32(0x0011a4f4,0x3c013f1d)

--Y-Fov
--4040013c 00008144 803e013c 00088144 (2nd)
eeObj.WriteMem32(0x0011a598,0x3c014080)
end

emuObj.AddVsyncHook(widescreen)