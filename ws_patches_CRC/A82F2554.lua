apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shining Force Neo SLUS_212.06
--comment=Widescreen Hack
eeObj.WriteMem32(0x001a8ff8,0x3c033ff3)
eeObj.WriteMem32(0x001a9000,0x3463cf35)
eeObj.WriteMem32(0x0029dd78,0x3c02401f)
end

emuObj.AddVsyncHook(widescreen)