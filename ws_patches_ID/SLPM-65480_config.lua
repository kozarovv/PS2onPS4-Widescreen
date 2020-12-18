apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Michigan [NTSC-J] (SLPM-65480)
--comment=Widescreen hack by nemesis2000
-- Added conditions for PAL50 and PAL60 (ElHecht)

-- 16:9
eeObj.WriteMem32(0x0013BDF8,0x3C02C2A8)
eeObj.WriteMem32(0x0013BE08,0x3C024328)
eeObj.WriteMem32(0x0013BE20,0x3C02C2A8)
eeObj.WriteMem32(0x0013BE30,0x3C024328)
eeObj.WriteMem32(0x0016d5d0,0x3c023f06)
end

emuObj.AddVsyncHook(widescreen)