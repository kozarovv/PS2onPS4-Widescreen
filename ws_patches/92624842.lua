apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Big Mutha Truckers (U)(SLUS-20291)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x001a3bcc,0x3c013f3a)

--Y-Fov
eeObj.WriteMem32(0x00382de0,0x3fe00000)
end

emuObj.AddVsyncHook(widescreen)