apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pai Chenjan [NTSC-J] [PBPX-95201](SLPS-20135)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x002574e0,0x0809d9b4)

eeObj.WriteMem32(0x002766d0,0x3c023f40)
eeObj.WriteMem32(0x002766d4,0x00000000)
eeObj.WriteMem32(0x002766d8,0x44825000)
eeObj.WriteMem32(0x002766dc,0x460aca82)
eeObj.WriteMem32(0x002766e0,0xe60a0000)
eeObj.WriteMem32(0x002766e4,0x08095d39)
end

emuObj.AddVsyncHook(widescreen)