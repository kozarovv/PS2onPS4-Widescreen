apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lotus Challenge (E)(SLES-50230)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0012a898,0x3c023ec0)

--Y-Fov
eeObj.WriteMem32(0x0012a8a0,0x3c023fe3)
eeObj.WriteMem32(0x0012a8a4,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)