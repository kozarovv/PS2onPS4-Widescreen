apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Soul Calibur III [NTSC-J] (SLPS-25577)
--comment=Widescreen correction by nemesis2000 (pnach by Little Gaint)

eeObj.WriteMem32(0x0012a120,0x3c013f40)
eeObj.WriteMem32(0x0012a124,0x34210000)
end

emuObj.AddVsyncHook(widescreen)