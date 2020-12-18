apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=L.A. Rush SLES_534.19
--comment=Widescreen Hack
eeObj.WriteMem32(0x002e3900,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)