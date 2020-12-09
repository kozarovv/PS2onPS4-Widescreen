apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Zone of the Enders: The 2nd Runner SLUS_205.45
--comment=Widescreen Hack
--16:9
eeObj.WriteMem32(0x0012a1a0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)