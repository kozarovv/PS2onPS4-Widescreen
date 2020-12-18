apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kuon [NTSC-J] (SLPS-25329)
--comment=Widescreen hack
eeObj.WriteMem32(0x00138104,0x3c023f19)
eeObj.WriteMem32(0x00138108,0x3443999a)
end

emuObj.AddVsyncHook(widescreen)