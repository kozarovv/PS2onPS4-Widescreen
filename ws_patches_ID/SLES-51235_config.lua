apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Raging Blades (E)(SLES-51235)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-fov
eeObj.WriteMem32(0x0022d420,0x3c013f40)

--Render fix
eeObj.WriteMem32(0x002e4b70,0x43e00000)
end

emuObj.AddVsyncHook(widescreen)