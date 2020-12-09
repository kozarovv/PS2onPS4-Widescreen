apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Onimusha: Dawn of Dreams (Disc 1) (SLUS-21180) / Onimusha: Dawn of Dreams (Disc 2) (SLUS-21362)
--comment=Widescreen correction by nemesis2000 (pnach by nemesis2000)

--gameplay

--val1
eeObj.WriteMem32(0x0012F960,0x3c033f19)
eeObj.WriteMem32(0x0012F968,0x34649999)

--val2
eeObj.WriteMem32(0x0012fb38,0x3c033f19)
eeObj.WriteMem32(0x0012fb40,0x34639999)

--val3
eeObj.WriteMem32(0x0012f9c8,0x3c023f19)
eeObj.WriteMem32(0x0012f9cc,0x34439999)

--rfix1
eeObj.WriteMem32(0x0012Fbb0,0x3c02c3d6)

--rfix1
eeObj.WriteMem32(0x0012Faa0,0x3c024527)
end

emuObj.AddVsyncHook(widescreen)