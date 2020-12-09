apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0033976c,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)