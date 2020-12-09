apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow Hearts SLES_506.77
--comment=Widescreen Hack
eeObj.WriteMem32(0x0028fa98,0x3c043f40)
eeObj.WriteMem32(0x00284814,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)