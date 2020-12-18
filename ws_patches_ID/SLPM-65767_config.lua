apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=NBA Starting Five 2005 SLPM_657.67
--comment=Widescreen Hack
eeObj.WriteMem32(0x00157d28,0x3c053fab)
eeObj.WriteMem32(0x00157eac,0x3c0243a8)
end

emuObj.AddVsyncHook(widescreen)