apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Megami Tensei: Persona 4 (SLUS-21782B)

--16:9 by pavachan
eeObj.WriteMem32(0x0076111c,0x3fe38e38)

--partial HUD fix by nemesis2000
eeObj.WriteMem32(0x00104680,0x3c043f40)
eeObj.WriteMem32(0x00104688,0x00731821)
eeObj.WriteMem32(0x0010468c,0x24636728)
eeObj.WriteMem32(0x00104694,0x00000000)
eeObj.WriteMem32(0x00104698,0x24630004)
eeObj.WriteMem32(0x0010469c,0x3c043f80)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x0046957c,0x1460000a)
eeObj.WriteMem32(0x00469584,0x3c03c294)
eeObj.WriteMem32(0x00469588,0x10000008)
eeObj.WriteMem32(0x0046958c,0x00000000)
eeObj.WriteMem32(0x004695a8,0x3c03c1a8)
eeObj.WriteMem32(0x004695bc,0x00000000)

--Font fix by nemesis2000
eeObj.WriteMem32(0x002732b4,0x00118903)
eeObj.WriteMem32(0x002732b8,0x02338818)
eeObj.WriteMem32(0x002732c0,0x8E93001c)
eeObj.WriteMem32(0x00273368,0x82970003)
eeObj.WriteMem32(0x0027343c,0x24130015)

eeObj.WriteMem32(0x00275dbc,0x2415000c)
eeObj.WriteMem32(0x00275dd4,0x3c0241a8)
eeObj.WriteMem32(0x00275e00,0x01154018)
eeObj.WriteMem32(0x00275e04,0x00084103)
eeObj.WriteMem32(0x00275e08,0x0100a82d)

--zoom fix by nemesis2000
eeObj.WriteMem32(0x0026c620,0x0c0fa77c)
eeObj.WriteMem32(0x0026c624,0x0220202d)
eeObj.WriteMem32(0x0026c628,0x0220202d)
eeObj.WriteMem32(0x0026c62c,0x0200282d)
eeObj.WriteMem32(0x0026c630,0x0000302d)
eeObj.WriteMem32(0x0026c634,0x0c0fa72c)
eeObj.WriteMem32(0x0026c638,0x00000000)
eeObj.WriteMem32(0x0026c63c,0x0c0f83d0)
eeObj.WriteMem32(0x0026c640,0x0200202d)
eeObj.WriteMem32(0x0026c644,0x0240202d)
eeObj.WriteMem32(0x0026c648,0x3c013fa1)
eeObj.WriteMem32(0x0026c64c,0x44810000)
eeObj.WriteMem32(0x0026c650,0xc66c0140)
eeObj.WriteMem32(0x0026c654,0x0c115df4)
eeObj.WriteMem32(0x0026c658,0x46006303)

--personas art fix by nemesis2000
eeObj.WriteMem32(0x0011dc6c,0x10400032)
eeObj.WriteMem32(0x0011dc78,0x1060002f)

eeObj.WriteMem32(0x0011dd28,0x3c013f02)
eeObj.WriteMem32(0x0011dd2c,0x44810800)
eeObj.WriteMem32(0x0011dd30,0x0c04756c)
eeObj.WriteMem32(0x0011dd34,0x46016b43)
eeObj.WriteMem32(0x0011dd38,0xdfbf0020)
eeObj.WriteMem32(0x0011dd3c,0x7bb00010)
eeObj.WriteMem32(0x0011dd40,0xc7b40000)
eeObj.WriteMem32(0x0011dd44,0x27bd0030)
eeObj.WriteMem32(0x0011dd48,0x03e00008)

eeObj.WriteMem32(0x0011D724,0x3C024340)

eeObj.WriteMem32(0x0011A114,0x00000000)
eeObj.WriteMem32(0x001369B0,0x00000000)

--characters art fix by nemesis2000
eeObj.WriteMem32(0x00354CE4,0x3C024340)
eeObj.WriteMem32(0x00223008,0x3C024340)

--partial HUD text fix by nemesis2000
eeObj.WriteMem32(0x00123430,0x24020BF6)

--Progressive Scan & 60fps
eeObj.WriteMem32(0x0041751c,0x3c050000)
eeObj.WriteMem32(0x00417524,0x3c060050)
eeObj.WriteMem32(0x0041752c,0x3c070001)
end

emuObj.AddVsyncHook(widescreen)