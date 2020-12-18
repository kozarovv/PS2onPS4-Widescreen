apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Esppiral

--3D Model view fix
eeObj.WriteMem32(0x0011F718,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)