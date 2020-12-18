apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Eureka Seven Vol 2  SLUS_215.38
--comment=Widescreen Hack
eeObj.WriteMem32(0x00110b24,0x3c034455)
eeObj.WriteMem32(0x0011129c,0x3c0343f0)
eeObj.WriteMem32(0x003BC638,0x43f00000)
eeObj.WriteMem32(0x003BCC48,0x43f00000)
end

emuObj.AddVsyncHook(widescreen)