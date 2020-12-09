apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Grandia Xtreme (J) SLPM-65089
--comment=Widescreen Patches (pnach NTSC-J by Arapapa)

eeObj.WriteMem32(0x004B4A28,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)