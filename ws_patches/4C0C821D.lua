apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001f34e4,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)