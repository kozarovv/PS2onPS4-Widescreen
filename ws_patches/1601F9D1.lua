apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00300954,0x3faaaaab)
eeObj.WriteMem32(0x00300958,0x3faaaaab)
end

emuObj.AddVsyncHook(widescreen)