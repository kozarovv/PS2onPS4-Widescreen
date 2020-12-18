apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mojo! (U)(SLES-52111)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0024ad74,0x3c024140)


end

emuObj.AddVsyncHook(widescreen)