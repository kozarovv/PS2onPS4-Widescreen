apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Fullmetal Alchemist and the Broken Angel(U) (SLUS_209.94)
--comment=Widescreen Hack (pnach NTSC-U by Arapapa)

--Wide hack 16:9 
eeObj.WriteMem32(0x0023d338,0x3c023f28)
eeObj.WriteMem32(0x00237740,0x3442f5c3)
end

emuObj.AddVsyncHook(widescreen)