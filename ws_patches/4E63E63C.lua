apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 and pavachan (NTSC-J by Arapapa)

--16:9
eeObj.WriteMem32(0x0076f61c,0x3fe38e38)

--partial HUD fix
eeObj.WriteMem32(0x00104da0,0x3c043f40)
eeObj.WriteMem32(0x00104da8,0x00731821)
eeObj.WriteMem32(0x00104dac,0x24635028)
eeObj.WriteMem32(0x00104db4,0x00000000)
eeObj.WriteMem32(0x00104db8,0x24630004)
eeObj.WriteMem32(0x00104dbc,0x3c043f80)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x004766ac,0x1460000a)
eeObj.WriteMem32(0x004766b4,0x3c03c294)
eeObj.WriteMem32(0x004766b8,0x10000008)
eeObj.WriteMem32(0x004766bc,0x00000000)
eeObj.WriteMem32(0x004766d8,0x3c03c1a8)
eeObj.WriteMem32(0x004766ec,0x00000000)

--optional zoom for moonwalk fix by nemesis2000
--2d202002($1) e0db0f0c(2)  00000000 2d202002 2d280002($3) 2d300000($4) 90db0f0c($5) 00000000 2d200002 34b80f0c($6) 00000000 2d204002($7) 40016cc6 d88e110c 00000000
eeObj.WriteMem32(0x00272180,0x0c0fdbe0)
eeObj.WriteMem32(0x00272184,0x0220202d)
eeObj.WriteMem32(0x00272188,0x0220202d)
eeObj.WriteMem32(0x0027218c,0x0200282d)
eeObj.WriteMem32(0x00272190,0x0000302d)
eeObj.WriteMem32(0x00272194,0x0c0fdb90)
eeObj.WriteMem32(0x00272198,0x00000000)
eeObj.WriteMem32(0x0027219c,0x0c0fb834)
eeObj.WriteMem32(0x002721a0,0x0200202d)
eeObj.WriteMem32(0x002721a4,0x0240202d)
eeObj.WriteMem32(0x002721a8,0x3c013f80)
eeObj.WriteMem32(0x002721ac,0x44810000)
eeObj.WriteMem32(0x002721b0,0xc66c0140)
eeObj.WriteMem32(0x002721b4,0x0c118ed8)
eeObj.WriteMem32(0x002721b8,0x46006303)

--personas art fix by nemesis2000
eeObj.WriteMem32(0x0011e54c,0x10400032)
eeObj.WriteMem32(0x0011e558,0x1060002f)

--a477040c($1) 00000000($2) 2000bfdf($3) 1000b07b($4) 0000b4c7($5) 3000bd27($6) 0800e003($7) 00000000 00000000
eeObj.WriteMem32(0x0011e608,0x3c013f02)
eeObj.WriteMem32(0x0011e60c,0x44810800)
eeObj.WriteMem32(0x0011e610,0x0c0477a4)
eeObj.WriteMem32(0x0011e614,0x46016b43)
eeObj.WriteMem32(0x0011e618,0xdfbf0020)
eeObj.WriteMem32(0x0011e61c,0x7bb00010)
eeObj.WriteMem32(0x0011e620,0xc7b40000)
eeObj.WriteMem32(0x0011e624,0x27bd0030)
eeObj.WriteMem32(0x0011e628,0x03e00008)

eeObj.WriteMem32(0x0011e004,0x3C024340)

--f804048e 8c79040c   
eeObj.WriteMem32(0x0011a984,0x00000000)

--2D202002 8c79040c
eeObj.WriteMem32(0x00137330,0x00000000)

--characters art fix by nemesis2000
eeObj.WriteMem32(0x00360ed4,0x3C024340)

--partial HUD text fix by nemesis2000
eeObj.WriteMem32(0x00123d00,0x24020BF6)

--Progressive Scan & 60fps
eeObj.WriteMem32(0x004246ac,0x3c050000)
eeObj.WriteMem32(0x004246b4,0x3c060050)
eeObj.WriteMem32(0x004246bc,0x3c070001)
end

emuObj.AddVsyncHook(widescreen)