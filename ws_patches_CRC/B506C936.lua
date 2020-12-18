apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Galerians Ash SLUS
--comment=Widescreen Hack
eeObj.WriteMem32(0x001e0100,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)