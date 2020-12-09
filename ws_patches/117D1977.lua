apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=16:9 Widescreen, 60fps, & Progressive Scan
--Personas art, Characters art, Partial HUD text & Zoom fix added by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0076461c,0x3fe38e38)

--FMV's fix
eeObj.WriteMem32(0x0046a8ec,0x1460000a)
eeObj.WriteMem32(0x0046a8f4,0x3c03c2aa)
eeObj.WriteMem32(0x0046a8f8,0x10000008)
eeObj.WriteMem32(0x0046a8fc,0x00000000)
eeObj.WriteMem32(0x0046a918,0x3c03c1c0)
eeObj.WriteMem32(0x0046a92c,0x00000000)

--Partial HUD fix
eeObj.WriteMem32(0x00104690,0x3c043f40)
eeObj.WriteMem32(0x00104698,0x00731821)
eeObj.WriteMem32(0x0010469c,0x24639ca8)
eeObj.WriteMem32(0x001046a4,0x00000000)
eeObj.WriteMem32(0x001046a8,0x24630004)
eeObj.WriteMem32(0x001046ac,0x3c043f80)

--Font fix (causes spacing errors)
eeObj.WriteMem32(0x002739a4,0x00118903)
eeObj.WriteMem32(0x002739a8,0x02338818)
eeObj.WriteMem32(0x002739b0,0x8E93001c)
eeObj.WriteMem32(0x00273a58,0x82970003)
eeObj.WriteMem32(0x00273b2c,0x24130015)

eeObj.WriteMem32(0x002764ac,0x2415000c)
eeObj.WriteMem32(0x002764c4,0x3c0241a8)
eeObj.WriteMem32(0x002764f0,0x01154018)
eeObj.WriteMem32(0x002764f4,0x00084103)
eeObj.WriteMem32(0x002764f8,0x0100982d)

--Personas art fix
eeObj.WriteMem32(0x0011dcfc,0x10400032)
eeObj.WriteMem32(0x0011dd08,0x1060002f)

eeObj.WriteMem32(0x0011ddb8,0x3c013f02)
eeObj.WriteMem32(0x0011ddbc,0x44810800)
eeObj.WriteMem32(0x0011ddc0,0x0c04758c)
eeObj.WriteMem32(0x0011ddc4,0x46016b43)
eeObj.WriteMem32(0x0011ddc8,0xdfbf0020)
eeObj.WriteMem32(0x0011ddcc,0x7bb00010)
eeObj.WriteMem32(0x0011ddd0,0xc7b40000)
eeObj.WriteMem32(0x0011ddd4,0x27bd0030)
eeObj.WriteMem32(0x0011ddd8,0x03e00008)

eeObj.WriteMem32(0x0011d7a4,0x3c024340)
eeObj.WriteMem32(0x0011a194,0x00000000)
eeObj.WriteMem32(0x00136cf0,0x00000000)

--Characters art fix
eeObj.WriteMem32(0x00355424,0x3c024340)

--Partial HUD text fix
eeObj.WriteMem32(0x001234c0,0x24020bf6)

--Zoom fix
eeObj.WriteMem32(0x0026cd10,0x0c0faa88)
eeObj.WriteMem32(0x0026cd14,0x0220202d)
eeObj.WriteMem32(0x0026cd18,0x0220202d)
eeObj.WriteMem32(0x0026cd1c,0x0200282d)
eeObj.WriteMem32(0x0026cd20,0x0000302d)
eeObj.WriteMem32(0x0026cd24,0x0c0faa38)
eeObj.WriteMem32(0x0026cd28,0x00000000)
eeObj.WriteMem32(0x0026cd2c,0x0c0f86dc)
eeObj.WriteMem32(0x0026cd34,0x0240202d)
eeObj.WriteMem32(0x0026cd38,0x3c013fa1)
eeObj.WriteMem32(0x0026cd3c,0x44810000)
eeObj.WriteMem32(0x0026cd48,0x46006303)

--Progressive Scan & 60fps
eeObj.WriteMem32(0x0041814c,0x3c050000)
eeObj.WriteMem32(0x00418154,0x3c060050)
eeObj.WriteMem32(0x0041815c,0x3c070001)
end

emuObj.AddVsyncHook(widescreen)