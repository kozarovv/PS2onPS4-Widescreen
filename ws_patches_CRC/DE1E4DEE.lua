apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tom Clancy's Ghost Recon: Jungle Storm (SLUS-20820)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--sp
eeObj.WriteMem32(0x0051f798,0x3c023f40)
eeObj.WriteMem32(0x0051f7d8,0x3c0243d6)

--menu
eeObj.WriteMem32(0x0051da50,0x3c023f40)
eeObj.WriteMem32(0x0051da70,0x3c0243d6)

--mp
eeObj.WriteMem32(0x00387c54,0x3c023f40)
eeObj.WriteMem32(0x00387c80,0x3c0243d6)

--unk
eeObj.WriteMem32(0x0051f704,0x3C023f40)
eeObj.WriteMem32(0x0051f748,0x3C0243d6)
end

emuObj.AddVsyncHook(widescreen)