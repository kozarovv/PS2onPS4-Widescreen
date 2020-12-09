apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Breath of Fire V - Dragon Quarter [NTSC-J] (SLPM-65196)
--comment=Widescreen patch by nemesis2000 (pnach by Little Giant)

eeObj.WriteMem32(0x0012dc8c,0x3c024307)
eeObj.WriteMem32(0x0012ddd8,0x3c034074)
end

emuObj.AddVsyncHook(widescreen)