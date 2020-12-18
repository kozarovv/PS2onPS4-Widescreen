apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Resident Evil - Dead Aim SLUS_206.69
--comment=Widescreen Hack
eeObj.WriteMem32(0x00232c30,0x3c1943f0)
eeObj.WriteMem32(0x00232c34,0x46021003)
eeObj.WriteMem32(0x00232c64,0xac99000c)
end

emuObj.AddVsyncHook(widescreen)