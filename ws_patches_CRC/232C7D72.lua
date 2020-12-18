apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by CeruleansBlue, devina, nemesis2000, sergx12, Arapapa

--16:9 by CeruleansBlue
eeObj.WriteMem32(0x007ccc1c,0x3fe38e38)

--partial HUD fix
eeObj.WriteMem32(0x00106cb0,0x3c043f40)
eeObj.WriteMem32(0x00106cb8,0x00701821)
eeObj.WriteMem32(0x00106cbc,0x24634b2c)
eeObj.WriteMem32(0x00106cc4,0x00000000)
eeObj.WriteMem32(0x00106cc8,0x24630004)
eeObj.WriteMem32(0x00106ccc,0x3c043f80)

--persona art fix by devina and nemesis2000
--003f033c 3001a3af 3401a0af 7001a0af 803f023c
eeObj.WriteMem32(0x0011486c,0x3c033ec0)
eeObj.WriteMem32(0x0011487c,0x3c023f90)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x0010ae10,0x1462000a)
eeObj.WriteMem32(0x0010ae18,0x3c02c294)
eeObj.WriteMem32(0x0010ae1c,0x10000008)
eeObj.WriteMem32(0x0010ae2c,0x00000000)
eeObj.WriteMem32(0x0010ae3c,0x3c02c1a8)
eeObj.WriteMem32(0x0010ae50,0x00000000)

--Clock, Popup portraits and etc by Arapapa
--02080046 b4f260e4 6c0080c4
eeObj.WriteMem32(0x004ab050,0x08030000)
eeObj.WriteMem32(0x000c0000,0x46000802)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e0002)
eeObj.WriteMem32(0x000c0010,0x0812ac15)

--Arcana Card Fix by Arapapa
eeObj.WriteMem32(0x003a0264,0x3c0242be)
eeObj.WriteMem32(0x003a0338,0x3c0242be)
eeObj.WriteMem32(0x0039ff50,0x3c024240)

--Shuffle Time (Card) Fix by Arpapa
--2c0000c6 6000a0e7
eeObj.WriteMem32(0x0020cc04,0x08168a54)
eeObj.WriteMem32(0x005a2950,0xc600002c)
eeObj.WriteMem32(0x005a2954,0x3c013f40)
eeObj.WriteMem32(0x005a2958,0x3421aaab)
eeObj.WriteMem32(0x005a295c,0x4481f000)
eeObj.WriteMem32(0x005a2960,0x461e0002)
eeObj.WriteMem32(0x005a2964,0x08083302)

--Community (2D Characters & Cards) fix by Arapapa
--000040c4 0000e0e4 040040c4 (3rd)
eeObj.WriteMem32(0x001141e0,0x08168a5a)
eeObj.WriteMem32(0x005a2968,0xc4400000)
eeObj.WriteMem32(0x005a296c,0x3c013f40)
eeObj.WriteMem32(0x005a2970,0x4481f000)
eeObj.WriteMem32(0x005a2974,0x461e0002)
eeObj.WriteMem32(0x005a2978,0x08045079)

--Community 2D Characters X-position by Arapapa
--bb43023c 00088244 1002a0c7
eeObj.WriteMem32(0x0013a154,0x3c024405)
--b143023c 00088244 0802a0c7
eeObj.WriteMem32(0x0013a1f8,0x3c024400)

--Community Cards X-position by Arapapa
--c041023c 00088244 7800a0c7 (2nd)
eeObj.WriteMem32(0x00137294,0x3c024250)

--Popup Portraits (In the Battles) fix by Arapapa
--8045023c 00008244 00000000 42001546 (1st)
--eeObj.WriteMem32(0x003c8abc,0x3c024540)

end

emuObj.AddVsyncHook(widescreen)