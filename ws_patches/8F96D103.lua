apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fahrenheit SLES_535.39
--comment=Widescreen Hack
eeObj.WriteMem32(0x00836500,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)