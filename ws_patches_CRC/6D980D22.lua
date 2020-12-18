apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (60hz)
--16:9
eeObj.WriteMem32(0x0037C2C8,0x3F88F5C3)
end

emuObj.AddVsyncHook(widescreen)