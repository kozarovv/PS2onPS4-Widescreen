apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crimson Sea 2 (K)(SLKA-25155)
--comment=Widescreen Hack NTSC-K by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00443D18,0x3c024328)
eeObj.WriteMem32(0x00443D28,0x3c023f1f)
eeObj.WriteMem32(0x00443D2C,0x344349f9)
end

emuObj.AddVsyncHook(widescreen)