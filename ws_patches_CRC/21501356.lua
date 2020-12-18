apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00123dd0,0x3c083fab)
eeObj.WriteMem32(0x0012c298,0x3c043f40)
end

emuObj.AddVsyncHook(widescreen)