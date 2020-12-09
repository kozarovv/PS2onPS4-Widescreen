apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Grandia Xtreme (NTSC-U)
--comment=Grandia Xtreme (NTSC-U) Widescreen Patches

-- 16:9
eeObj.WriteMem32(0x004B53A8,0x3F400000)

-- 16:10
--eeObj.WriteMem32(0x004B53A8,0x3F555555)
end

emuObj.AddVsyncHook(widescreen)