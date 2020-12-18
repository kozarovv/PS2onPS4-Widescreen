apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Minna no Golf 4 [NTSC-J] [SCPS-15059]
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0005010C,0x0048DD94)
eeObj.WriteMem32(0x0048DD70,0x3c0143f0)
eeObj.WriteMem32(0x0048DD94,0xac81010c)
eeObj.WriteMem32(0x0015a8d4,0x3c023c39)
eeObj.WriteMem32(0x0015a8d8,0x3442a4ec)
eeObj.WriteMem32(0x0044c360,0x43955553)
end

emuObj.AddVsyncHook(widescreen)