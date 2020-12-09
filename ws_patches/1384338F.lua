apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

eeObj.WriteMem32(0x004AED80,0x3F400000)
--eeObj.WriteMem32(0x005C8320,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)