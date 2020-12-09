apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NHL Hitz 2002
--comment=Widescreen hack
eeObj.WriteMem32(0x004dc0a8,0x3F248B44)
eeObj.WriteMem32(0x0071fc18,0x3F2AE148)
end

emuObj.AddVsyncHook(widescreen)