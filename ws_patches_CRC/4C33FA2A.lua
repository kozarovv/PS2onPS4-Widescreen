apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
--Thanks to ElHecht for PAL patch
eeObj.WriteMem32(0x0011b9cc,0x3c013f20)
eeObj.WriteMem32(0x002F5178,0x3C023F40)
end

emuObj.AddVsyncHook(widescreen)