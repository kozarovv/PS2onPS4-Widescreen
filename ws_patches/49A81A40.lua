apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen hack by Arapapa

--16:9
eeObj.WriteMem32(0x00545838,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)