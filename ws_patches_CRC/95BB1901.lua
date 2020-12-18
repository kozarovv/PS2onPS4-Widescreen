apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MX vs. ATV Unleashed SLUS_211.04
--comment=Widescreen Hack
eeObj.WriteMem32(0x0018ee14,0x3c03bfab)
eeObj.WriteMem32(0x0018ee18,0x3c023fab)
eeObj.WriteMem32(0x001b81d4,0x3c023f18)
eeObj.WriteMem32(0x0022c5c8,0x3c043fe3)
eeObj.WriteMem32(0x0022c5cc,0x348e8e39)
end

emuObj.AddVsyncHook(widescreen)