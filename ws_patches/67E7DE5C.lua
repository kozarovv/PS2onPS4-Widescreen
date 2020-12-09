apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47

eeObj.WriteMem32(0x0039f648,0x3faaaaab)

eeObj.WriteMem32(0x00125cc0,0x3c023fe3)
eeObj.WriteMem32(0x00125cc4,0x34428e38)
end

emuObj.AddVsyncHook(widescreen)