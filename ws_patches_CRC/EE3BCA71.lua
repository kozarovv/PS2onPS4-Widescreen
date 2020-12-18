apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Castleween (E)(SLES-51249)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--Y-fov
eeObj.WriteMem32(0x002b9c78,0x3c023f40)

--Zoom
eeObj.WriteMem32(0x002794b8,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)