apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MXRider (E)(SLES-50132)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f013c 00008144 8e3c013c (2nd)
eeObj.WriteMem32(0x002ce274,0x3c013f20)
end

emuObj.AddVsyncHook(widescreen)