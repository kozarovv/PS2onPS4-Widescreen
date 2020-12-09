apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001186e8,0x3c013f22)
eeObj.WriteMem32(0x0017db4c,0x3c013f10)
eeObj.WriteMem32(0x0033198c,0x3c01bec0)
end

emuObj.AddVsyncHook(widescreen)