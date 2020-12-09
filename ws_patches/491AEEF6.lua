apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

--gameplay
eeObj.WriteMem32(0x00139584,0x3c023f19)
eeObj.WriteMem32(0x00139588,0x3443999a)
--render fix
eeObj.WriteMem32(0x001397ec,0x3c0443d6)
end

emuObj.AddVsyncHook(widescreen)