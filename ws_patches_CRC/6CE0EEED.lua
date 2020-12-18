apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00338c84,0x3f400000)
eeObj.WriteMem32(0x004a9db0,0x3f206d37)
end

emuObj.AddVsyncHook(widescreen)