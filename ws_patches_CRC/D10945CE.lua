apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Reign of Fire (U)(SLUS_205.56)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00135320,0x3c023fab)

--Zoom
eeObj.WriteMem32(0x001352b8,0x3c023f24)
end

emuObj.AddVsyncHook(widescreen)