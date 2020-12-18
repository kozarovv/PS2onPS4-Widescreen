apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sonic Riders - Zero Gravity (PAL-M5) (SLES-54915)
--comment=Widescreen hack by jordenlb/ElHecht

-- 16:9
eeObj.WriteMem32(0x005fe9a0,0x43700000)
eeObj.WriteMem32(0x00149964,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)