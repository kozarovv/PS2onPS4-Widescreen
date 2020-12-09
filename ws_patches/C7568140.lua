apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=.hack Kansen Kakudai Vol. 1 [NTSC-J] (SLPS-25121)
--comment=Widescreen hack
eeObj.WriteMem32(0x009A6A70,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)