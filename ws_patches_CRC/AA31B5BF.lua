apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=MGS3 NTSC U SLUS_209.15
--comment=MGS3 (NTSC-U) Widescreen Patches by Acem

-- 16:9
eeObj.WriteMem32(0x0020247c,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)