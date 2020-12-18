apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Wide 16:9 (00000000 3f90a3d7 3fc00000)
eeObj.WriteMem32(0x00429870,0x3fc0d938)
end

emuObj.AddVsyncHook(widescreen)