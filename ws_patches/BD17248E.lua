apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Onimusha: Dawn of Dreams (Disc 1) (SLPM-66275) / Onimusha: Dawn of Dreams (Disc 2) (SLUS-21362)
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--gameplay

--val1
eeObj.WriteMem32(0x0012f8a0,0x3c033f19)
eeObj.WriteMem32(0x0012f8a8,0x34649999)

--val2
eeObj.WriteMem32(0x0012fa78,0x3c033f19)
eeObj.WriteMem32(0x0012fa80,0x34639999)

--val3
eeObj.WriteMem32(0x00167f58,0x3c023f19)
eeObj.WriteMem32(0x00167f5c,0x34439999)

--rfix1
eeObj.WriteMem32(0x0012faf0,0x3c02c3d6)

--rfix1
eeObj.WriteMem32(0x0012f9e0,0x3c024527)
end

emuObj.AddVsyncHook(widescreen)