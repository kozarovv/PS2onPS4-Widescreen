apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Space Channel 5 - Special Edition disc 1 SLUS_208.06
--comment=Widescreen Hack
eeObj.WriteMem32(0x0024b694,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)