apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Alarm for Cobra 11 - Vol. II (E)(SLES-52920)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00393500,0x3c07bf55)


end

emuObj.AddVsyncHook(widescreen)