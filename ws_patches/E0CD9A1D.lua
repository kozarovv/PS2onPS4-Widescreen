apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Alex Ferguson's Player Manager 2001 (E)(SLES-50429)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x002354e8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)