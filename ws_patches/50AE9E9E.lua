apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--4c3f023c cdcc4334
eeObj.WriteMem32(0x001717b8,0x3c023f19)
eeObj.WriteMem32(0x001717bc,0x34439994)
end

emuObj.AddVsyncHook(widescreen)