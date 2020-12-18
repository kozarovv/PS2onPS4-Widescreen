apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x001a17b4,0x3c013f10)
eeObj.WriteMem32(0x00197bbc,0x3c013f22)
end

emuObj.AddVsyncHook(widescreen)