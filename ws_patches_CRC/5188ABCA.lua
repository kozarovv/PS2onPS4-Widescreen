apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by flameofrecca
eeObj.WriteMem32(0x00113500,0x3c013f11)
eeObj.WriteMem32(0x0011207c,0x3c013f2a)
eeObj.WriteMem32(0x001124c8,0x3c013f2a)
end

emuObj.AddVsyncHook(widescreen)