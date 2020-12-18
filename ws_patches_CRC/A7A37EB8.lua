apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Indigo Prophecy SLUS_211.96
--comment=Widescreen Hack
eeObj.WriteMem32(0x00836500,0x3FE38E38)
end

emuObj.AddVsyncHook(widescreen)