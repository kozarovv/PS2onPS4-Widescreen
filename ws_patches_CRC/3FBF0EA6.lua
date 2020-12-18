apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Dino Stalker (SLUS-20485)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)
eeObj.WriteMem32(0x002AF944,0x3f199999)
eeObj.WriteMem32(0x002AF984,0x3f199999)
eeObj.WriteMem32(0x002AF9c4,0x3f199999)
eeObj.WriteMem32(0x0012d224,0x3c0143d6)
eeObj.WriteMem32(0x00117670,0x3c0143d6)
end

emuObj.AddVsyncHook(widescreen)