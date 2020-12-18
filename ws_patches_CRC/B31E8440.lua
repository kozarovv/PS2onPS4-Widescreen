apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MX vs. ATV Unleashed (K)(SLKA-25282)
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x0018edf4,0x3c03bfab)
eeObj.WriteMem32(0x0018edf8,0x3c023fab)
eeObj.WriteMem32(0x001b81b4,0x3c023f18)
eeObj.WriteMem32(0x0022c5a8,0x3c043fe3)
eeObj.WriteMem32(0x0022c5ac,0x348e8e39)
end

emuObj.AddVsyncHook(widescreen)