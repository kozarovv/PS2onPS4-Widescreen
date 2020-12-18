apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=10,000 bullets SLES_534.81
--comment=Widescreen Hack
eeObj.WriteMem32(0x005eded4,0x3c013faa)
eeObj.WriteMem32(0x005ee0ec,0x3c013faa)
end

emuObj.AddVsyncHook(widescreen)