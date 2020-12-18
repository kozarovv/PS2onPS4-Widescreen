apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SkyGunner SLUS_203.84
--comment=Widescreen Hack
eeObj.WriteMem32(0x0017df80,0x3F400000)
eeObj.WriteMem32(0x002f1d10,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)