apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Zathura (E)(SLES-53696)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002f6284,0x081037d0)
eeObj.WriteMem32(0x0040df40,0x46020842)
eeObj.WriteMem32(0x0040df44,0x3c013f40)
eeObj.WriteMem32(0x0040df48,0x4481f000)
eeObj.WriteMem32(0x0040df4c,0x461e0843)
eeObj.WriteMem32(0x0040df50,0x080bd8a2)
end

emuObj.AddVsyncHook(widescreen)