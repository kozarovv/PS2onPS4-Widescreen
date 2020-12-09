apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
eeObj.WriteMem32(0x0038dcb8,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)