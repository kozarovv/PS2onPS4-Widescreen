apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x00267604,0x3c023f40)
eeObj.WriteMem32(0x007a11b0,0x44bff400)
eeObj.WriteMem32(0x007a1370,0x443FE7FF)
eeObj.WriteMem32(0x007a1530,0x443FE7FF)
end

emuObj.AddVsyncHook(widescreen)