apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001d6d84,0x3c014225)
eeObj.WriteMem32(0x001d6dfc,0x3c013f2a)
eeObj.WriteMem32(0x0020371c,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)