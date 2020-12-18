apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Van Helsing (J)(SLPM-65723)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002ec1b0,0x3fe38e38)

--X-Fov (include 2D)
--eeObj.WriteMem32(0x0023dfc4,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)