apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tom Clancy's Ghost Recon: Jungle Storm (SLES_519.76) PAL
--comment=Converted from NTSC Widescreen hack by nemesis2000 (PAL by Somechump)

--sp
eeObj.WriteMem32(0x0051d978,0x3c023f40)
eeObj.WriteMem32(0x0051d9b8,0x3c0243b6)

--mp
eeObj.WriteMem32(0x00387324,0x3c023f40)
eeObj.WriteMem32(0x00387350,0x3c0243b6)

--unk
eeObj.WriteMem32(0x0051d8e4,0x3C053f40)
eeObj.WriteMem32(0x0051d928,0x3C0243b6)
end

emuObj.AddVsyncHook(widescreen)