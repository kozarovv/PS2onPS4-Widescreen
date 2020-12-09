apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=K-1 World Grand Prix SLUS_206.82
--comment=Widescreen hack
eeObj.WriteMem32(0x0080143c,0x3f2ccccd)
end

emuObj.AddVsyncHook(widescreen)