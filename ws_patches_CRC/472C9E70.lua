apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0012a9cc,0x3c013f40)
eeObj.WriteMem32(0x0012abd8,0x3c013f40)
eeObj.WriteMem32(0x0012b46c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)