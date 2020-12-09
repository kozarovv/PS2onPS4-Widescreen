apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Gameplay 16:9

--Zoom fix
--003f023c 00008244 b00541c6
eeObj.WriteMem32(0x002b124c,0x3c023eca)

--X-fov + Zoom
--aa3f023c abaa4234 080000c6
eeObj.WriteMem32(0x002b1274,0x3c023f80)
eeObj.WriteMem32(0x002b1278,0x34420000)
end

emuObj.AddVsyncHook(widescreen)