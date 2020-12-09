apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 and pavachan (pnach by Arapapa)

--16:9 by pavachan
eeObj.WriteMem32(0x0076201c,0x3fe38e38)

--partial HUD fix by nemesis2000
eeObj.WriteMem32(0x00104680,0x3c043f40)
eeObj.WriteMem32(0x00104688,0x00731821)
eeObj.WriteMem32(0x0010468c,0x246379a8)
eeObj.WriteMem32(0x00104694,0x00000000)
eeObj.WriteMem32(0x00104698,0x24630004)
eeObj.WriteMem32(0x0010469c,0x3c043f80)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x0046b51c,0x1460000a)
eeObj.WriteMem32(0x0046b524,0x3c03c294)
eeObj.WriteMem32(0x0046b528,0x10000008)
eeObj.WriteMem32(0x0046b52c,0x00000000)
eeObj.WriteMem32(0x0046b548,0x3c03c1a8)
eeObj.WriteMem32(0x0046b55c,0x00000000)

--zoom fix by nemesis2000
--2d202002($1) 74af0f0c($2) 00000000 2d202002 2d280002($3) 2d300000($4) 24af0f0c($5) 00000000 2d200002 c88b0f0c($6) 00000000 2d204002($7) 40016cc6 e465110c 00000000
eeObj.WriteMem32(0x0026c660,0x0c0faf74)
eeObj.WriteMem32(0x0026c664,0x0220202d)
eeObj.WriteMem32(0x0026c668,0x0220202d)
eeObj.WriteMem32(0x0026c66c,0x0200282d)
eeObj.WriteMem32(0x0026c670,0x0000302d)
eeObj.WriteMem32(0x0026c674,0x0c0faf24)
eeObj.WriteMem32(0x0026c678,0x00000000)
eeObj.WriteMem32(0x0026c67c,0x0c0f8bc8)
eeObj.WriteMem32(0x0026c680,0x0200202d)
eeObj.WriteMem32(0x0026c684,0x0240202d)
eeObj.WriteMem32(0x0026c688,0x3c013f80)
eeObj.WriteMem32(0x0026c68c,0x44810000)
eeObj.WriteMem32(0x0026c690,0xc66c0140)
eeObj.WriteMem32(0x0026c694,0x0c1165e4)
eeObj.WriteMem32(0x0026c698,0x46006303)

--personas art fix by nemesis2000
eeObj.WriteMem32(0x0011dd0c,0x10400032)
eeObj.WriteMem32(0x0011dd18,0x1060002f)

--9475040c($1) 00000000($2) 2000bfdf($3) 1000b07b($4) 0000b4c7($5) 3000bd27($6) 0800e003($7) 00000000 00000000
eeObj.WriteMem32(0x0011ddc8,0x3c013f02)
eeObj.WriteMem32(0x0011ddcc,0x44810800)
eeObj.WriteMem32(0x0011ddd0,0x0c047594)
eeObj.WriteMem32(0x0011ddd4,0x46016b43)
eeObj.WriteMem32(0x0011ddd8,0xdfbf0020)
eeObj.WriteMem32(0x0011dddc,0x7bb00010)
eeObj.WriteMem32(0x0011dde0,0xc7b40000)
eeObj.WriteMem32(0x0011dde4,0x27bd0030)
eeObj.WriteMem32(0x0011dde8,0x03e00008)

eeObj.WriteMem32(0x0011d7c4,0x3C024340)

--f804048e 7c77040c
eeObj.WriteMem32(0x0011a1b4,0x00000000)

--2D202002 7c77040c
eeObj.WriteMem32(0x00136a80,0x00000000)

--characters art fix by nemesis2000
eeObj.WriteMem32(0x00356cb4,0x3C024340)

--partial HUD text fix by nemesis2000
eeObj.WriteMem32(0x00123500,0x24020BF6)

--Progressive Scan & 60fps
eeObj.WriteMem32(0x004194fc,0x3c050000)
eeObj.WriteMem32(0x00419504,0x3c060050)
eeObj.WriteMem32(0x0041950c,0x3c070001)

--Font fix by nemesis2000
--eeObj.WriteMem32(0x002732b4,0x00118903)
--eeObj.WriteMem32(0x002732b8,0x02338818)
--eeObj.WriteMem32(0x002732c0,0x8E93001c)
--eeObj.WriteMem32(0x00273368,0x82970003)
--eeObj.WriteMem32(0x0027343c,0x24130015)

--eeObj.WriteMem32(0x00275dbc,0x2415000c)
--eeObj.WriteMem32(0x00275dd4,0x3c0241a8)
--eeObj.WriteMem32(0x00275e00,0x01154018)
--eeObj.WriteMem32(0x00275e04,0x00084103)
--eeObj.WriteMem32(0x00275e08,0x0100a82d)
end

emuObj.AddVsyncHook(widescreen)