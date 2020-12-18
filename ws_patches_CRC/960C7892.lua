apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Marvel Ultimate Alliance SLUS_213.74
--comment=Widescreen Hack
eeObj.WriteMem32(0x00979ac8,0x3fe6db6e)
eeObj.WriteMem32(0x00979acc,0x3FE38E32)
end

emuObj.AddVsyncHook(widescreen)