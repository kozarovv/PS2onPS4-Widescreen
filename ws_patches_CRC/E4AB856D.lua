apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Soccer America - International Cup (U)(SLUS-20196)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x001079c4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)