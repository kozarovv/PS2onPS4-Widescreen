apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Beni no Umi 2 - Crimson Sea [NTSC-J] [SLPM-65477]
--comment=Widescreen Hack NTSC-J by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00443CD8,0x3c024328)
eeObj.WriteMem32(0x00443CE8,0x3c023f1f)
eeObj.WriteMem32(0x00443CEC,0x344349f9)
end

emuObj.AddVsyncHook(widescreen)