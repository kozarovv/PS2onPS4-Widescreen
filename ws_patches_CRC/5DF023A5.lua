apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00416ea4,0x3c013ec0)
eeObj.WriteMem32(0x00417074,0x3c013f22)
end

emuObj.AddVsyncHook(widescreen)