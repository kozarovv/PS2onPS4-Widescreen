apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00608144 000099c4
eeObj.WriteMem32(0x00410548,0x3c013f20)

--Y-Fov
--4040013c 00008144 803e013c 00088144 02a00046(2nd)
eeObj.WriteMem32(0x004105dc,0x3c014080)
end

emuObj.AddVsyncHook(widescreen)