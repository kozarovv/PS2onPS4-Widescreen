apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003dcd18,0x3c013fe3)
eeObj.WriteMem32(0x003dcd1c,0x3421388e)
end

emuObj.AddVsyncHook(widescreen)