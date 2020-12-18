apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SpyHunter 2 SLUS_205.90
--comment=Widescreen Hack
eeObj.WriteMem32(0x002badc4,0x3c013fe3)
eeObj.WriteMem32(0x002badc8,0x34217fa5)
end

emuObj.AddVsyncHook(widescreen)