apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

--16:9
eeObj.WriteMem32(0x0011ff90,0x3c013fdc)
eeObj.WriteMem32(0x0011ff94,0x34211ade)

eeObj.WriteMem32(0x00121a88,0x3c013fdc)
eeObj.WriteMem32(0x00121a8c,0x34211ade)

eeObj.WriteMem32(0x00122498,0x3c013fdc)
eeObj.WriteMem32(0x0012249c,0x34211ade)
end

emuObj.AddVsyncHook(widescreen)