apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DragonBall Z Budokai 3 - Greatest Hits SLUS_209.98
--comment=Widescreen Hack
eeObj.WriteMem32(0x0044AF20,0x3f23d706)
eeObj.WriteMem32(0x004280B4,0x3f23d706)
end

emuObj.AddVsyncHook(widescreen)