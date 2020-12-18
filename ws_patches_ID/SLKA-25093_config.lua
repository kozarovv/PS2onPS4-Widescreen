apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Onimusha 3 - Demon Siege (K)(SLKA-25093)
--comment=Widescreen hack by nemesiss2000 (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0014ff80,0x3c033f19)
eeObj.WriteMem32(0x0014ff88,0x34639999)

eeObj.WriteMem32(0x0014ffe0,0x3c023f19)
eeObj.WriteMem32(0x0014ffe4,0x34439999)

eeObj.WriteMem32(0x00150138,0x3c033f19)
eeObj.WriteMem32(0x00150140,0x34639999)
eeObj.WriteMem32(0x001501b0,0x3c02c3d6)
eeObj.WriteMem32(0x001500a0,0x3c024527)

--No interlacing by asasega
--00 79 63 24 44 00 23 A6 50 00 22 A6 54 00 23 A6
eeObj.WriteMem32(0x0027864c,0x34037900)
end

emuObj.AddVsyncHook(widescreen)