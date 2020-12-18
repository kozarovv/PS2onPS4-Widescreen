apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0046d790,0x3c013f40)
eeObj.WriteMem32(0x0046d70c,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)