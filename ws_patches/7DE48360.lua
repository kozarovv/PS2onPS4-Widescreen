apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by dieSkaarj.

eeObj.WriteMem32(0x0048f5f8,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)