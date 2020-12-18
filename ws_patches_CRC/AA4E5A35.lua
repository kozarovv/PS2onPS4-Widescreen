apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bloody Roar 3 SLUS_202.12
--comment=Widescreen Hack
eeObj.WriteMem32(0x001f4454,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)