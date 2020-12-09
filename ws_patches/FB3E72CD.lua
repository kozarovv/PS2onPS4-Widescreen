apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=National Geographic - Safari Adventures Africa (E)(SLES-54508)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002301c8,0x3c023ec0)

--Render fix
eeObj.WriteMem32(0x001ea67c,0x3c024340)
end

emuObj.AddVsyncHook(widescreen)