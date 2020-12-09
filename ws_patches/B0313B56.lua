apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wangan Midnight SLPS_201.85
--comment=Widescreen Hack
eeObj.WriteMem32(0x0017be24,0x3c073f40)
eeObj.WriteMem32(0x001e2aac,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)