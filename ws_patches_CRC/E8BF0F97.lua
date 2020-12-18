apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Thrillville - Off the Rails (K)(SLKA-25343)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00608144 000099c4
eeObj.WriteMem32(0x0040cdb8,0x3c013f20)

--Y-Fov
--4040013c 00008144 803e013c 00088144 02a00046(2nd)
eeObj.WriteMem32(0x0040ce4c,0x3c014080)
end

emuObj.AddVsyncHook(widescreen)