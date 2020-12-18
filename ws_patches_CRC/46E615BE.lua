apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Little Giant

eeObj.WriteMem32(0x002389F4,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)