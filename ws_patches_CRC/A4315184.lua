apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Thrillville (U)(SLUS-21413)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00608144 000096c4
eeObj.WriteMem32(0x00432db4,0x3c013f20)

--Y-Fov
--4040013c 00008144 803e013c 00088144 02a00046 (3rd)
eeObj.WriteMem32(0x00432e48,0x3c014080)
end

emuObj.AddVsyncHook(widescreen)