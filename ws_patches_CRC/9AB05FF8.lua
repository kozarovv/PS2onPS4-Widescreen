apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tom Clancy's Ghost Recon (K) (SLKA_250.31)
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--sp
eeObj.WriteMem32(0x003a8b94,0x3c023f40)
eeObj.WriteMem32(0x003a8bb4,0x3c0243d6)

--mp
eeObj.WriteMem32(0x003a8cb4,0x3c023f40)
eeObj.WriteMem32(0x003a8cd4,0x3c0243d6)

--menu
eeObj.WriteMem32(0x0053c404,0x3c043f40)
eeObj.WriteMem32(0x0053c410,0x3c0243d6)
end

emuObj.AddVsyncHook(widescreen)