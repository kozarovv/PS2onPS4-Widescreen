apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

eeObj.WriteMem32(0x0040c40c,0x3c013fff)
eeObj.WriteMem32(0x0040c410,0x3421ff99)
eeObj.WriteMem32(0x0040c414,0x44810000)
eeObj.WriteMem32(0x0040cff0,0x3c013ec0)
end

emuObj.AddVsyncHook(widescreen)