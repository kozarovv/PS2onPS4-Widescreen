apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NHL Hitz Pro (SLUS_20691)
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x003F4724,0x3F248B44)
end

emuObj.AddVsyncHook(widescreen)