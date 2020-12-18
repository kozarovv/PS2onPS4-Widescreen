apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NHL Hitz 2002 Ver 2.00
--comment=Widescreen hack
eeObj.WriteMem32(0x004E1528,0x3F248B44)
end

emuObj.AddVsyncHook(widescreen)