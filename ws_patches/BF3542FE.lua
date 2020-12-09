apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kengo - Master of Bushido SLUS_200.21
--comment=Widescreen Hack
eeObj.WriteMem32(0x0012a96c,0x3c013f40)
eeObj.WriteMem32(0x0012ab78,0x3c013f40)
eeObj.WriteMem32(0x0012b40c,0x3c013f40)
--eeObj.WriteMem32(0x00145f9c,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)