apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0016edc0,0x3c033f40)
eeObj.WriteMem32(0x0016fbac,0x3c043f40)
eeObj.WriteMem32(0x0022ac90,0x43d60000)
eeObj.WriteMem32(0x0022aca0,0x43d60000)
end

emuObj.AddVsyncHook(widescreen)