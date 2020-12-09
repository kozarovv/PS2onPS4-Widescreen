apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x003e4258,0x3c013fe3)
eeObj.WriteMem32(0x003e425c,0x34218e38)
end

emuObj.AddVsyncHook(widescreen)