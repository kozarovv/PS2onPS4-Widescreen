apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

eeObj.WriteMem32(0x003C9EB0,0x3FE37FA9)
end

emuObj.AddVsyncHook(widescreen)