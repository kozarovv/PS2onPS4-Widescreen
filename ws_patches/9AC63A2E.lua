apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kuon SLUS_210.07
--comment=Widescreen Hack
eeObj.WriteMem32(0x001380a4,0x3c023f19)
eeObj.WriteMem32(0x001380a8,0x3443999a)
end

emuObj.AddVsyncHook(widescreen)