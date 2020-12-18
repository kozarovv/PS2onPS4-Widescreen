apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow the Hedgehog SLUS_212.61
--comment=Widescreen Hack
eeObj.WriteMem32(0x007CF188,0x3F199999)
eeObj.WriteMem32(0x00845ED8,0x3FAAAAAA)
end

emuObj.AddVsyncHook(widescreen)