apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NHL Hitz 2003 (SLUS_20438)
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x0071FB08,0x3F248B44)
eeObj.WriteMem32(0x0071FC18,0x3F2AE148)
end

emuObj.AddVsyncHook(widescreen)