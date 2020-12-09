apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wild Arms 4
--comment=Widescreen Hack
eeObj.WriteMem32(0x001596d0,0x3c0645ff)
eeObj.WriteMem32(0x0015976c,0x3c023f40)
eeObj.WriteMem32(0x00159574,0x3c05442b)
end

emuObj.AddVsyncHook(widescreen)