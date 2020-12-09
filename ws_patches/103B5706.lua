apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by flameofrecca-- ported by PsxFan107
eeObj.WriteMem32(0x001138B8,0x3c013f11)
eeObj.WriteMem32(0x001127A0,0x3c013f2a)
eeObj.WriteMem32(0x0011287C,0x3c013f2a)
end

emuObj.AddVsyncHook(widescreen)