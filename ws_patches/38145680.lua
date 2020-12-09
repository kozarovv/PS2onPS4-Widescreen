apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack, set to 16:9 in-game
eeObj.WriteMem32(0x001F2790,0x3F400000)
eeObj.WriteMem32(0x001FA0C8,0x3F800000)
eeObj.WriteMem32(0x004A0F84,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)