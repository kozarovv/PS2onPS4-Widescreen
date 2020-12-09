apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0082b414,0x3fe38e38)
eeObj.WriteMem32(0x008e2840,0x400ccccd)
end

emuObj.AddVsyncHook(widescreen)