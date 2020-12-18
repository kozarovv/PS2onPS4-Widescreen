apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Matt Hoffman's Pro BMX 2 SLUS_203.35
--comment=Widescreen Hack
eeObj.WriteMem32(0x001c5744,0x3c023fab)
eeObj.WriteMem32(0x0024d588,0x3c023c2e)
eeObj.WriteMem32(0x0036c108,0x3c033fc0)
end

emuObj.AddVsyncHook(widescreen)