apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Devil Kings SLUS_212.97
--comment=Widescreen hack
eeObj.WriteMem32(0x00130afc,0x3c013f19)
eeObj.WriteMem32(0x00130b00,0x3421999a)
eeObj.WriteMem32(0x001ba360,0x3c013f19)
eeObj.WriteMem32(0x001ba364,0x3421999a)
end

emuObj.AddVsyncHook(widescreen)