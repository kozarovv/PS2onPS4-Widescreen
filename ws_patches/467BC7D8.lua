apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x00DB5688,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)