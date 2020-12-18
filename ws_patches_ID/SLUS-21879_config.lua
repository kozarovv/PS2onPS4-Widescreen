apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Marvel Ultimate Alliance 2 SLUS_218.79
--comment=Widescreen Hack
eeObj.WriteMem32(0x008314e4,0x3fe6db6e)
eeObj.WriteMem32(0x008314e8,0x3FE38E32)
eeObj.WriteMem32(0x00831518,0x3F299999)
end

emuObj.AddVsyncHook(widescreen)