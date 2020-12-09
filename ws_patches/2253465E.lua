apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- Widescreen is always enabled no matter what ingame setting is selected

eeObj.WriteMem32(0x0067256C,0x3f400000)
eeObj.WriteMem32(0x00672570,0x3f800000)
end

emuObj.AddVsyncHook(widescreen)