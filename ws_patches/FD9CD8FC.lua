apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Oni SLUS_200.64
--comment=Widescreen Hack
eeObj.WriteMem32(0x00134bb8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)