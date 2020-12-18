apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x00720208,0x3F100000)
eeObj.WriteMem32(0x00720318,0x3F2AE148)
end

emuObj.AddVsyncHook(widescreen)