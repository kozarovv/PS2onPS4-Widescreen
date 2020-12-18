apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001211c8,0x3c023f22)
eeObj.WriteMem32(0x01e16348,0x3c023f40)
eeObj.WriteMem32(0x002B757C,0x43C00000)
end

emuObj.AddVsyncHook(widescreen)