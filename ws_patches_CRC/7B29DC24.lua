apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

--gameplay
eeObj.WriteMem32(0x0013d504,0x3c023f19)
eeObj.WriteMem32(0x0013d508,0x3443999a)

--render fix
eeObj.WriteMem32(0x0013d764,0x3c0343d6)
end

emuObj.AddVsyncHook(widescreen)