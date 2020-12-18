apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Arc the Lad - End of Darkness (NTSC-U) (SLUS-21165)
--comment=Widescreen hack by pavachan/ElHecht

-- 16:9
eeObj.WriteMem32(0x002c5584,0x3f19999a)
eeObj.WriteMem32(0x002c58b8,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)