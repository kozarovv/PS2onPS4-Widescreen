apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sonic Riders Zero Gravity (NTSC-U)
--comment=Widescreen hack by JLB
eeObj.WriteMem32(0x005FE740,0x43700000)
eeObj.WriteMem32(0x005FE7A0,0x43700000)
eeObj.WriteMem32(0x00149964,0x3c023fab)
end

emuObj.AddVsyncHook(widescreen)