apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x002be7d8,0x43c00000)
end

emuObj.AddVsyncHook(widescreen)