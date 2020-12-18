apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Surf's Up (E)(SLES-54583)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x006056a4,0x3c033ec0)
eeObj.WriteMem32(0x0060e678,0x3c033ec0)


end

emuObj.AddVsyncHook(widescreen)