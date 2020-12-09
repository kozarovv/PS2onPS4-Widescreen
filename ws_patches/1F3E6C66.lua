apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0042A7AC,0x3c023f06)
eeObj.WriteMem32(0x0042A7B0,0x34436666)
end

emuObj.AddVsyncHook(widescreen)