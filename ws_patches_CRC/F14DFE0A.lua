apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow of Destiny SLUS_201.46
--comment=Widescreen Hack
eeObj.WriteMem32(0x0020fdc8,0x3c014455)
eeObj.WriteMem32(0x0020fde0,0x3c013ac8)
end

emuObj.AddVsyncHook(widescreen)