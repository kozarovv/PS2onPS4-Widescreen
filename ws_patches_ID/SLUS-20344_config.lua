apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rez (SLUS_20344)
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x0027E8C4,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)