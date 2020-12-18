apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metal Gear Solid 2 - Substance SLUS_205.54
--comment=Widescreen Hack
eeObj.WriteMem32(0x0011fee0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)