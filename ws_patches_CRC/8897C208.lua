apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000, devina, sergx12, Arapapa
--comment=Controllable party members by TGE (NTSC-K by Arapapa)

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x007caf1c,0x3fe38e38)

--Partial HUD fix by nemesis2000
eeObj.WriteMem32(0x00106d20,0x3c043f40)
eeObj.WriteMem32(0x00106d28,0x00701821)
eeObj.WriteMem32(0x00106d2c,0x246330ac)
eeObj.WriteMem32(0x00106d34,0x00000000)
eeObj.WriteMem32(0x00106d38,0x24630004)
eeObj.WriteMem32(0x00106d3c,0x3c043f80)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x0010ae80,0x1462000a)
eeObj.WriteMem32(0x0010ae88,0x3c02c294)
eeObj.WriteMem32(0x0010ae8c,0x10000008)
eeObj.WriteMem32(0x0010ae9c,0x00000000)
eeObj.WriteMem32(0x0010aeac,0x3c02c1a8)
eeObj.WriteMem32(0x0010aec0,0x00000000)

--Persona art fix by devina and nemesis2000
--003f033c 3001a3af 3401a0af 7001a0af 803f023c
eeObj.WriteMem32(0x001148cc,0x3c033ec0)
eeObj.WriteMem32(0x001148dc,0x3c023f90)

--480p by asmodean
--0012023c 001042dc
eeObj.WriteMem32(0x0019d1e0,0x3c040010)
eeObj.WriteMem32(0x0019d1e4,0x348426dc)
eeObj.WriteMem32(0x0019d1e8,0x8c820000)
eeObj.WriteMem32(0x0019d1ec,0x38420001)
eeObj.WriteMem32(0x0019d1f0,0xac820000)
eeObj.WriteMem32(0x0019d1f4,0x000217fc)
eeObj.WriteMem32(0x0019d1f8,0x000217ff)
eeObj.WriteMem32(0x0019d1fc,0x0000000f)
eeObj.WriteMem32(0x0019d200,0x42000038)
eeObj.WriteMem32(0x0019d204,0x03e00008)
eeObj.WriteMem32(0x0019d208,0x00000000)
eeObj.WriteMem32(0x0019d20c,0x00000001)

--038c0500 03940600
eeObj.WriteMem32(0x004f93ec,0x24110000)
eeObj.WriteMem32(0x004f93f0,0x24120050)
eeObj.WriteMem32(0x004f93f4,0x24020001)
eeObj.WriteMem32(0x004f93f8,0x10820031)
eeObj.WriteMem32(0x004f93fc,0x24130001)

------------------------------------------------------/
/In-Game Menu Portraits fix by Arapapa
--74008224 21104500 00004284
--74008224 21104500 00004294
--eeObj.WriteMem32(0x00112a44,0x0803002c)
eeObj.WriteMem32(0x000c00b0,0x94420000)
eeObj.WriteMem32(0x000c00b4,0x01224821)
eeObj.WriteMem32(0x000c00b8,0x00421021)
eeObj.WriteMem32(0x000c00bc,0x01221021)
eeObj.WriteMem32(0x000c00c0,0x00021082)
eeObj.WriteMem32(0x000c00c4,0x08044a92)

--Main Character (In-Game Menu) X-Position
--d643033c
eeObj.WriteMem32(0x0011cac4,0x3c0343f0)
eeObj.WriteMem32(0x0011cb74,0x3c0343f0)
eeObj.WriteMem32(0x0011d0c8,0x3c0343f0)
eeObj.WriteMem32(0x0011d7a4,0x3c0343f0)
eeObj.WriteMem32(0x0011e08c,0x3c0343f0)
eeObj.WriteMem32(0x00125e44,0x3c0343f0)
eeObj.WriteMem32(0x00126078,0x3c0343f0)
eeObj.WriteMem32(0x0014cbec,0x3c0343f0)
eeObj.WriteMem32(0x00160534,0x3c0343f0)
eeObj.WriteMem32(0x00160784,0x3c0343f0)
eeObj.WriteMem32(0x0018a5b4,0x3c0343f0)

--Menu (Status) Main Character X-Position #2
--c1010324 00008344 00000000 (2 times)
eeObj.WriteMem32(0x001262ec,0x240301f5)
eeObj.WriteMem32(0x001264e0,0x240301f5)

--Partner Character (In-Game Menu) X-Position
--b343023c
eeObj.WriteMem32(0x00164924,0x3c0243d8)
eeObj.WriteMem32(0x00164f04,0x3c0243d8)
eeObj.WriteMem32(0x00165248,0x3c0243d8)
eeObj.WriteMem32(0x0016569c,0x3c0243d8)
eeObj.WriteMem32(0x00166054,0x3c0243d8)

--Main Character (In-Game Menu)  Shadow
--803f023c b000a2af
--803f023c b000a1af
eeObj.WriteMem32(0x00126840,0x3c013fab)
eeObj.WriteMem32(0x00126860,0xafa100b0)

--Shadow (In-Game Menu) X-Position fix
--3c43023c (1 - 7)
--3c43023c 4802a2af 4c02a0af
eeObj.WriteMem32(0x00126c54,0x3c024398)
eeObj.WriteMem32(0x00126d6c,0x3c024398)
eeObj.WriteMem32(0x00126e90,0x3c024398)
eeObj.WriteMem32(0x00126fbc,0x3c024398)
eeObj.WriteMem32(0x00127068,0x3c024398)
eeObj.WriteMem32(0x001270fc,0x3c024398)
eeObj.WriteMem32(0x00127214,0x3c024398)
eeObj.WriteMem32(0x00164890,0x3c0243cc)
------------------------------------------------------/

------------------------------------------------------/
--Popup Portraits, Clock and etc by Arapapa
--02080046 b4f260e4 6c0080c4
eeObj.WriteMem32(0x004aa970,0x081688aa)
eeObj.WriteMem32(0x005a22a8,0x46000802)
eeObj.WriteMem32(0x005a22ac,0x3c013f40)
eeObj.WriteMem32(0x005a22b0,0x4481f000)
eeObj.WriteMem32(0x005a22b4,0x461e0002)
eeObj.WriteMem32(0x005a22b8,0x0812aa5d)
----------------------------------------------------------/

----------------------------------------------------------/
--Detect 'Open the in-game menu'
--90 52 02 01 60 4C 6A 01 60 55 02 01 D0 55 02 01 40 56 02 01
--02080046 b4f260e4 6c0080c4
eeObj.WriteMem32(0x00020000,0x107ce440)
eeObj.WriteMem32(0x004aa970,0x46000802)
eeObj.WriteMem32(0x00112a44,0x0803002c)

eeObj.WriteMem32(0x00020000,0x007ce440)
eeObj.WriteMem32(0x004aa970,0x081688aa)
eeObj.WriteMem32(0x00112a44,0x84420000)

--Detect 'Scene changing'
--0040023c c0f2a0e4 20108046
--00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 64 00 00 00 00 00 00 00
eeObj.WriteMem32(0x00010000,0x107ce3d4)
eeObj.WriteMem32(0x004aa954,0x3c02402a)

eeObj.WriteMem32(0x00010000,0x007ce3d4)
eeObj.WriteMem32(0x004aa954,0x3c024000)
--------------------------------------------------

------------------------------------------------/
--Arcana Card fix by Arapapa
--fe42023c 00608244
--be42023c 00608244 (twice)
eeObj.WriteMem32(0x003a0068,0x3c0242be)
eeObj.WriteMem32(0x0039ff94,0x3c0242be)

--b442023c 00008244 00000000 41080046
--4042023c 00008244 00000000 41080046(2nd)
eeObj.WriteMem32(0x0039fc80,0x3c024240)

--Shuffle Time (Card) fix by Arapapa
--2c0000c6 6000a0e7
eeObj.WriteMem32(0x0020c924,0x081688a4)
eeObj.WriteMem32(0x005a2290,0xc600002c)
eeObj.WriteMem32(0x005a2294,0x3c013f40)
eeObj.WriteMem32(0x005a2298,0x4481f000)
eeObj.WriteMem32(0x005a229c,0x461e0002)
eeObj.WriteMem32(0x005a22a0,0x0808324a)
----------------------------------------------------/

----------------------------------------------------/
--Community (2D Characters & Cards) fix by Arapapa
--000040c4 0000e0e4 040040c4 (3rd)
eeObj.WriteMem32(0x00114240,0x081688b0)
eeObj.WriteMem32(0x005a22c0,0xc4400000)
eeObj.WriteMem32(0x005a22c4,0x3c013f40)
eeObj.WriteMem32(0x005a22c8,0x4481f000)
eeObj.WriteMem32(0x005a22cc,0x461e0002)
eeObj.WriteMem32(0x005a22d0,0x08045091)

--Community 2D Characters X-position by Arapapa
--bb43023c 00088244 1002a0c7
eeObj.WriteMem32(0x0013a1a4,0x3c024405)
--b143023c 00088244 0802a0c7
eeObj.WriteMem32(0x0013a248,0x3c024400)

--Community Cards X-position by Arapapa
--c041023c 00088244 7800a0c7 (2nd)
eeObj.WriteMem32(0x001372e4,0x3c024250)

--Community - Main Menu Shadows X-Position
--c842033c 00008344 00000000 410d0046 100055e4
--c842033c 00008344 00000000 01080046 100040e4 (4 times)
eeObj.WriteMem32(0x001367ec,0x3c0341b0)
eeObj.WriteMem32(0x001378e0,0x3c0341b0)
eeObj.WriteMem32(0x00137f3c,0x3c0341b0)
eeObj.WriteMem32(0x00138508,0x3c0341b0)
eeObj.WriteMem32(0x00138bd4,0x3c0341b0)

--Community Cards #2 X-Size
--000060c4 000000e5 040060c4 040000e5
eeObj.WriteMem32(0x00114ff8,0x0803001c)
eeObj.WriteMem32(0x000c0070,0xc4600000)
eeObj.WriteMem32(0x000c0074,0x3c013f40)
eeObj.WriteMem32(0x000c0078,0x4481f000)
eeObj.WriteMem32(0x000c007c,0x461e0002)
eeObj.WriteMem32(0x000c0080,0x080453ff)

--Community Cards #2 X-Position
--e041023c 00088244 7800a0c7 400b0046 (3rd)
eeObj.WriteMem32(0x001394cc,0x3c024256)

--Reverse Community Cards #1 X-Position
--c041023c 00088244 7800a0c7 (1st)
--8841023c 00088244 7800a0c7 (1st)
eeObj.WriteMem32(0x00137288,0x3c024250)
eeObj.WriteMem32(0x0013738c,0x3c0241b6)

--Reverse Community Cards #2
--4041023c 0000824400000000 010b0046
eeObj.WriteMem32(0x00139434,0x3c024010)
--e041023c 00088244 7800a0c7 400b0046 (2nd)
eeObj.WriteMem32(0x00139360,0x3c024216)
------------------------------------------------/

------------------------------------------------/
--Popup Portraits (Left top, In the Battles) fix by Arapapa
--8045023c 00008244 00000000 42001546
eeObj.WriteMem32(0x003c87fc,0x3c024540)

--Popup Portraits (Left top, In the Battles) X-position
--100040e4 00009244 00000000 (2nd)
eeObj.WriteMem32(0x003c87d4,0x00000000)

--8042023c 00108244 80c1023c
eeObj.WriteMem32(0x003ab368,0x3c020000)
--------------------------------------------

--------------------------------------------
--Flare effect fix by Arapapa
--0040023c 00088244 00000000 82090046
eeObj.WriteMem32(0x00347758,0x3c023fc0)

--42090046 2d180000 803f023c
eeObj.WriteMem32(0x00347770,0x081688b6)
eeObj.WriteMem32(0x005a22d8,0x46000942)
eeObj.WriteMem32(0x005a22dc,0x3c013f40)
eeObj.WriteMem32(0x005a22e0,0x4481f000)
eeObj.WriteMem32(0x005a22e4,0x461e2943)
eeObj.WriteMem32(0x005a22e8,0x080d1ddd)
--------------------------------------------------------

------------------------------------------------------/
--Head Portraits (Right, In the Battles) fix by Arapapa
--10004426 7000a527 (1st)
eeObj.WriteMem32(0x0022d764,0x08030000)
eeObj.WriteMem32(0x000c0000,0x26440010)
eeObj.WriteMem32(0x000c0004,0xc7bf0078)
eeObj.WriteMem32(0x000c0008,0x3c013f40)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461effc2)
eeObj.WriteMem32(0x000c0014,0xe7bf0078)
eeObj.WriteMem32(0x000c0018,0x0808b5da)

--10014426 7000a527 (1st)
eeObj.WriteMem32(0x0022d864,0x08030008)
eeObj.WriteMem32(0x000c0020,0x26440110)
eeObj.WriteMem32(0x000c0024,0xc7bf0078)
eeObj.WriteMem32(0x000c0028,0x3c013f40)
eeObj.WriteMem32(0x000c002c,0x4481f000)
eeObj.WriteMem32(0x000c0030,0x461effc2)
eeObj.WriteMem32(0x000c0034,0xe7bf0078)
eeObj.WriteMem32(0x000c0038,0x0808b61a)

--Head Portraits (Right, In the Battles) X-Position
--f041033c 00008344 00000000 c0051746 (1st)
eeObj.WriteMem32(0x0022d724,0x3c034220)

--Emoticon (In the Battles) fix by Arapapa
--30054426 7000a527
eeObj.WriteMem32(0x0022dcf8,0x08030010)
eeObj.WriteMem32(0x000c0040,0x26440530)
eeObj.WriteMem32(0x000c0044,0xc7bf0078)
eeObj.WriteMem32(0x000c0048,0x3c013f40)
eeObj.WriteMem32(0x000c004c,0x4481f000)
eeObj.WriteMem32(0x000c0050,0x461effc2)
eeObj.WriteMem32(0x000c0054,0xe7bf0078)
eeObj.WriteMem32(0x000c0058,0x0808b73f)

--Emoticon X-Position
--e842033c 00008344 00000000 00001946
eeObj.WriteMem32(0x0022dcb8,0x3c0342d0)
--------------------------------------------/

--------------------------------------------/
--Title Menu fix by Arapapa
--6800a2af 6c00a2af (3rd)
eeObj.WriteMem32(0x0026e5b4,0x3c013fab)
eeObj.WriteMem32(0x0026e5c4,0xafa10068)
eeObj.WriteMem32(0x0026e5f8,0xafa10068)
eeObj.WriteMem32(0x0026e62c,0xafa10068)
eeObj.WriteMem32(0x0026e660,0xafa10068)
eeObj.WriteMem32(0x0026e88c,0xafa10068)

--Title Menu (Shadow)
--6843023c 00008244 00000000 03000146
eeObj.WriteMem32(0x0026e830,0x3c02439b)

--Sub Menu - Select Episode (Shadow)
--00000000 xxxxxxxx xxxxxxxx xxxxxxxx 788480c7 9800a0e7
eeObj.WriteMem32(0x0026b304,0xc7808478)
eeObj.WriteMem32(0x0026b314,0x461e0002)
------------------------------------------

------------------------------------------
--Font fix (causes spacing errors)
--2d880001 2d982001 00008444 00000000
eeObj.WriteMem32(0x003b3198,0x340a0004)
eeObj.WriteMem32(0x003b31a4,0x010a4023)
eeObj.WriteMem32(0x003b31b4,0x0100882d)

--8400a0e7 8800a1e7 8c00a0e7
eeObj.WriteMem32(0x003b32ec,0x08030024)
eeObj.WriteMem32(0x000c0090,0x3c013f7d)
eeObj.WriteMem32(0x000c0094,0x3421aaaa)
eeObj.WriteMem32(0x000c0098,0x4481f000)
eeObj.WriteMem32(0x000c009c,0x461e0003)
eeObj.WriteMem32(0x000c00a0,0xe7a00084)
eeObj.WriteMem32(0x000c00a4,0x080eccbc)

--8041023c 00008244 00000000 830d0046 00008544
eeObj.WriteMem32(0x003b31ac,0x3c024196)

--03009782 1c00938e
eeObj.WriteMem32(0x003b0fd4,0x00118903)
eeObj.WriteMem32(0x003b0fd8,0x02338818)
eeObj.WriteMem32(0x003b0fe0,0x8e93001c)

--21882202 2800738e xxxxxxxx 00000000
--21882202 2800738e xxxxxxxx 1c00938e
eeObj.WriteMem32(0x003b1090,0x82970003)

--21904202 2800948e xxxxxxxx 00000000
--21904202 2800948e xxxxxxxx 15001324
eeObj.WriteMem32(0x003b11dc,0x24130013)
----------------------------------------------


--------------------------------------------------------
--Controllable party members by TGE (NTSC-K by Arapapa)

eeObj.WriteMem32(0x0029ad78,0x00000000)
eeObj.WriteMem32(0x00201eac,0x00000000)

eeObj.WriteMem32(0x00201ebc,0x8F84BA0C)
eeObj.WriteMem32(0x00201ec0,0x8C840254)
eeObj.WriteMem32(0x00201ec4,0x8C840030)
eeObj.WriteMem32(0x00201ec8,0x8C8400A4)

eeObj.WriteMem32(0x0028dbc4,0x2405001B)
eeObj.WriteMem32(0x002966dc,0x00000000)

eeObj.WriteMem32(0x0028aa7c,0x9683001A)

eeObj.WriteMem32(0x0028aa80,0x3063FFBF)
eeObj.WriteMem32(0x0028aa84,0xA683001A)

eeObj.WriteMem32(0x0028aa88,0x96830018)
eeObj.WriteMem32(0x0028aa8c,0x00000000)
eeObj.WriteMem32(0x0028aa90,0x081a6ab8)
eeObj.WriteMem32(0x0028aa94,0x00000000)

eeObj.WriteMem32(0x0069AAE0,0x8F82BA0C)
eeObj.WriteMem32(0x0069AAE4,0x8C420148)
eeObj.WriteMem32(0x0069AAE8,0x14540004)
eeObj.WriteMem32(0x0069AAEC,0x00000000)
eeObj.WriteMem32(0x0069AAF0,0x34630400)
eeObj.WriteMem32(0x0069AAF4,0xA6830018)
eeObj.WriteMem32(0x0069AAF8,0x34630400)
eeObj.WriteMem32(0x0069AAFC,0x080a2aa5)
eeObj.WriteMem32(0x0069AB00,0x00000000)

eeObj.WriteMem32(0x001ff3c8,0x8E300254)
eeObj.WriteMem32(0x001ff3cc,0x8E100030)
eeObj.WriteMem32(0x001ff3d0,0x8E1000A4)
eeObj.WriteMem32(0x001ff3d4,0x00000000)
eeObj.WriteMem32(0x001ff3d8,0x00000000)
eeObj.WriteMem32(0x001ff3dc,0x00000000)

eeObj.WriteMem32(0x002d7e50,0x00000000)
eeObj.WriteMem32(0x002d7e60,0x00000000)
eeObj.WriteMem32(0x002d7e64,0x00000000)
eeObj.WriteMem32(0x002d7e7c,0x00000000)

eeObj.WriteMem32(0x002a3694,0x081a6ac1)

eeObj.WriteMem32(0x0069AB04,0x1240000B)
eeObj.WriteMem32(0x0069AB08,0x00000000)
eeObj.WriteMem32(0x0069AB0C,0x8E420030)
eeObj.WriteMem32(0x0069AB10,0x844700A2)
eeObj.WriteMem32(0x0069AB14,0x20030001)
eeObj.WriteMem32(0x0069AB18,0x14E00006)
eeObj.WriteMem32(0x0069AB1C,0x00000000)
eeObj.WriteMem32(0x0069AB20,0x844200A4)
eeObj.WriteMem32(0x0069AB24,0x10430003)
eeObj.WriteMem32(0x0069AB28,0x00001021)
eeObj.WriteMem32(0x0069AB2C,0x080a8da7)
eeObj.WriteMem32(0x0069AB30,0x00000000)
eeObj.WriteMem32(0x0069AB34,0x0c0be118)
eeObj.WriteMem32(0x0069AB38,0x00000000)
eeObj.WriteMem32(0x0069AB3C,0x080a8da7)
eeObj.WriteMem32(0x0069AB40,0x00000000)

----------------------------------------------------
--CH Icon position
--eeObj.WriteMem32(0x0018c070,0x3c024100)
--eeObj.WriteMem32(0x0018c0cc,0x3c024100)
--eeObj.WriteMem32(0x0022ca88,0x3c024040)

--Command X-position
--eeObj.WriteMem32(0x0021f660,0x3c024200)
--eeObj.WriteMem32(0x0021f68c,0x3c024300)

--HUD (Right top) X-Position
--eeObj.WriteMem32(0x00182e58,0x3c024100)

--Moon X-Position
--eeObj.WriteMem32(0x00183488,0x24020240)
--eeObj.WriteMem32(0x00182dbc,0x00000000)
--eeObj.WriteMem32(0x0011d0c8,0x3c0343a6)
--------------------------------------------------------/

--Command (Enter)(O) X-Position
--eeObj.WriteMem32(0x0011c360,0x3c024428)
--Command (Cancel)(X) X-Position
--eeObj.WriteMem32(0x0011c3a4,0x240202f0)

--Command (Time) X-Position
--eeObj.WriteMem32(0x0011bf74,0x3c0243d0)
--eeObj.WriteMem32(0x0011bf54,0x24020200)


--------------------------------------------------------/

--eeObj.WriteMem32(0x001158bc,0x08030040)
--eeObj.WriteMem32(0x000c0100,0x46006586)
--eeObj.WriteMem32(0x000c0104,0x3c093f40)
--eeObj.WriteMem32(0x000c0108,0x4489f000)
--eeObj.WriteMem32(0x000c010c,0x461eb583)
--eeObj.WriteMem32(0x000c0110,0xe7a20080)
--eeObj.WriteMem32(0x000c0114,0xe5400014)
--eeObj.WriteMem32(0x000c0118,0x08045630)

-- Ä¿¹Â Ä«µå ±×¸²ÀÚ X-À§Ä¡ ¹ÙÅÁ
--eeObj.WriteMem32(0x00138f60,0x3c024100)
--# 2 X À§Ä¡ ¹ÙÅÁ
--eeObj.WriteMem32(0x00138ff0,0x3c024100)
-- ·©Å© ±ÛÀÚ XÀ§Ä¡ 
--eeObj.WriteMem32(0x001390f0,0x3c024200)

--Message Indigator X-Position
--eeObj.WriteMem32(0x003a7ee0,0x08030040)
--eeObj.WriteMem32(0x000c0104,0x3c013f70)
--eeObj.WriteMem32(0x000c0108,0x4481f000)
--eeObj.WriteMem32(0x000c010c,0x461e1082)
--eeObj.WriteMem32(0x000c0110,0xe7a20018)
--eeObj.WriteMem32(0x000c0114,0x080e9fb9)

--menu emoticon Y-Position
--eeObj.WriteMem32(0x00123fe8,0x3c024240)

--Battle Result Picture X-Position
--eeObj.WriteMem32(0x002364a8,0x2403010d)
------------------------------------------------------/

--2D X-Size
--eeObj.WriteMem32(0x0011322c,0x080300c0)
--eeObj.WriteMem32(0x000c0300,0xc5400000)
--eeObj.WriteMem32(0x000c0304,0x3c093f40)
--eeObj.WriteMem32(0x000c0308,0x4489f000)
--eeObj.WriteMem32(0x000c030c,0x461e0002)
--eeObj.WriteMem32(0x000c0310,0x08044c8c)

--------------------------------------------------------
--X-Fov by Arapapa
--c2490546 5400e3c4
--eeObj.WriteMem32(0x004c97bc,0x08140c98)
--eeObj.WriteMem32(0x00503260,0x460549c2)
--eeObj.WriteMem32(0x00503264,0x3c013f40)
--eeObj.WriteMem32(0x00503268,0x4481f000)
--eeObj.WriteMem32(0x0050326c,0x461e39c2)
--eeObj.WriteMem32(0x00503270,0x081325f0)

--Render fix
--0040063c 24018524
--eeObj.WriteMem32(0x004c8f7c,0x3c064040)
--803f043c 00188444 00000000 03190446
--eeObj.WriteMem32(0x004c95cc,0x3c043e40)
--Render
--eeObj.WriteMem32(0x004ef3dc,0x3c033f40)
--------------------------------------------------------/

--eeObj.WriteMem32(0x00112a10,0x8c440184)
--eeObj.WriteMem32(0x00112a54,0x96220028)
--eeObj.WriteMem32(0x00112ac0,0x46000d83)
--eeObj.WriteMem32(0x00112754,0x3c013f40)
--eeObj.WriteMem32(0x00112768,0x4481f000)
--eeObj.WriteMem32(0x001127c0,0xc441000c)
--eeObj.WriteMem32(0x001127c4,0x00000000)


--2D X-Size
--eeObj.WriteMem32(0x00112a30,0x08030040)
--eeObj.WriteMem32(0x000c0100,0x8c43005c)
--eeObj.WriteMem32(0x000c0104,0x3c013f40)
--eeObj.WriteMem32(0x000c0108,0x4481f000)
--eeObj.WriteMem32(0x000c010c,0x461e0002)
--eeObj.WriteMem32(0x000c0110,0xe7a0009c)
--eeObj.WriteMem32(0x000c0114,0x08044a8d)












end

emuObj.AddVsyncHook(widescreen)