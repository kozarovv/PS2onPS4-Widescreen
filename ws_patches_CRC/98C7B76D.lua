apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nanobreaker SLUS_210.10
--comment=Widescreen Hack
eeObj.WriteMem32(0x00498ef8,0x44550000)
eeObj.WriteMem32(0x00498f00,0x3ac00000)
end

emuObj.AddVsyncHook(widescreen)