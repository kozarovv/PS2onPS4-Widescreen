apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MXRider (U)(SLUS-20234)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--003f013c 00008144 8e3c013c (2nd)
eeObj.WriteMem32(0x002ce4f4,0x3c013f20)
end

emuObj.AddVsyncHook(widescreen)