apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack

--gameplay
eeObj.WriteMem32(0x004d8d50,0x4182e8ba)
end

emuObj.AddVsyncHook(widescreen)