apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fullmetal Alchemist and the Broken Angel SLUS_209.94
--comment=Widescreen Hack
eeObj.WriteMem32(0x00237d48,0x3c023f28)
eeObj.WriteMem32(0x00237d50,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)