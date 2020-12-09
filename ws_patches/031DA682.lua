apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x002cc43c,0xbf400000)
eeObj.WriteMem32(0x002cc440,0x3f400000)
eeObj.WriteMem32(0x002cc444,0x3e900000)
end

emuObj.AddVsyncHook(widescreen)