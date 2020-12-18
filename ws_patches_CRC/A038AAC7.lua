apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Barbie Horse Adventures - Riding Camp (E)(SLES-55371)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0078C3FC,0x3fe38e39)
end

emuObj.AddVsyncHook(widescreen)