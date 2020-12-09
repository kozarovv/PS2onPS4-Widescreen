apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sonic Riders (NTSC-U)
--comment=Widescreen hack
eeObj.WriteMem32(0x0044E6D8,0x43700000)
eeObj.WriteMem32(0x08008DA0,0x43700000)
eeObj.WriteMem32(0x00134e4c,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)