apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Spider-Man - The Movie (E)(SLES-50812)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x004d1554,0x3fe38e2a)

--Zoom
eeObj.WriteMem32(0x002b5e64,0x3c013c28)
end

emuObj.AddVsyncHook(widescreen)