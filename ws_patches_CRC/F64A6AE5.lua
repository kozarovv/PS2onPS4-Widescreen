apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Megami Tensei: Persona 3 FES [PAL] (SLES-55354)
--comment=16:9 Widescreen, 60fps, & Progressive Scan
--Persona art fix added by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x007cd01c,0x3fe38e38)

--Partial HUD fix
eeObj.WriteMem32(0x00106ea0,0x3c043f40)
eeObj.WriteMem32(0x00106ea8,0x00701821)
eeObj.WriteMem32(0x00106eac,0x24634f2c)
eeObj.WriteMem32(0x00106eb4,0x00000000)
eeObj.WriteMem32(0x00106eb8,0x24630004)
eeObj.WriteMem32(0x00106ebc,0x3c043f80)

--Persona art fix
eeObj.WriteMem32(0x00115fa8,0x3c033ec0)
eeObj.WriteMem32(0x00115fb8,0x3c023f90)

--FMV fix by Arapapa
eeObj.WriteMem32(0x0010b0bc,0x3c024415)
eeObj.WriteMem32(0x0010b0c0,0x34425555)
eeObj.WriteMem32(0x0010b0c4,0x44821000)

eeObj.WriteMem32(0x0010b108,0x3c0243f5)
eeObj.WriteMem32(0x0010b10c,0x34425553)
eeObj.WriteMem32(0x0010b110,0x44821000)

--Font fix (causes spacing errors)
eeObj.WriteMem32(0x003b3134,0x00118903)
eeObj.WriteMem32(0x003b3138,0x02338818)
eeObj.WriteMem32(0x003b3140,0x8E93001c)
eeObj.WriteMem32(0x003b3204,0x82970003)
eeObj.WriteMem32(0x003b3350,0x24130015)
eeObj.WriteMem32(0x003b55dc,0x2415000c)
eeObj.WriteMem32(0x003b55f4,0x3c0241a8)
eeObj.WriteMem32(0x003b5620,0x01154018)
eeObj.WriteMem32(0x003b5624,0x00084103)
eeObj.WriteMem32(0x003b5628,0x0100a82d)

--Progressive Scan & 60fps
eeObj.WriteMem32(0x004fb0fc,0x3c050000)
eeObj.WriteMem32(0x004fb104,0x3c060050)
eeObj.WriteMem32(0x004fb10c,0x3c070001)

------------------------------------------------------/
/In-Game Menu  Portraits fix by Arapapa
--74008224 21104500 00004284
--74008224 21104500 00004294
--eeObj.WriteMem32(0x00112e34,0x08030034)
eeObj.WriteMem32(0x000c00d0,0x94420000)
eeObj.WriteMem32(0x000c00d4,0x01224821)
eeObj.WriteMem32(0x000c00d8,0x00421021)
eeObj.WriteMem32(0x000c00dc,0x01221021)
eeObj.WriteMem32(0x000c00e0,0x00021082)
eeObj.WriteMem32(0x000c00e4,0x08044b8e)

--Main Character X-Position
--d643033c
eeObj.WriteMem32(0x0011e0f4,0x3c0343f0)
eeObj.WriteMem32(0x0011e1a4,0x3c0343f0)
eeObj.WriteMem32(0x0011e708,0x3c0343f0)
eeObj.WriteMem32(0x0011ede4,0x3c0343f0)
eeObj.WriteMem32(0x0011f6cc,0x3c0343f0)
eeObj.WriteMem32(0x001274b4,0x3c0343f0)
eeObj.WriteMem32(0x001276e8,0x3c0343f0)
eeObj.WriteMem32(0x0014e12c,0x3c0343f0)
eeObj.WriteMem32(0x00162034,0x3c0343f0)
eeObj.WriteMem32(0x00162284,0x3c0343f0)
eeObj.WriteMem32(0x0018be84,0x3c0343f0)

--Menu (Status) Main Character X-Position #2
--c1010324 00008344 00000000 (2 times)
eeObj.WriteMem32(0x00127964,0x240301f5)
eeObj.WriteMem32(0x00127b58,0x240301f5)

--Partner Characters X-Position
--b343023c
eeObj.WriteMem32(0x001664b4,0x3c0243d8)
eeObj.WriteMem32(0x00166b28,0x3c0243d8)
eeObj.WriteMem32(0x00166e6c,0x3c0243d8)
eeObj.WriteMem32(0x001672c0,0x3c0243d8)
eeObj.WriteMem32(0x00167c78,0x3c0243d8)

--Main Character (In-Game Menu)  Shadow
--803f023c b000a2af
--803f023c b000a1af
eeObj.WriteMem32(0x00127ec0,0x3c013fab)
eeObj.WriteMem32(0x00127ee0,0xafa100b0)

--Shadow (In-Game Menu,) X-Position fix
--3c43023c
--3c43023c 4802a2af 4c02a0af
eeObj.WriteMem32(0x001282d4,0x3c024398)
eeObj.WriteMem32(0x00128408,0x3c024398)
eeObj.WriteMem32(0x0012852c,0x3c024398)
eeObj.WriteMem32(0x00128674,0x3c024398)
eeObj.WriteMem32(0x00128720,0x3c024398)
eeObj.WriteMem32(0x001287b4,0x3c024398)
eeObj.WriteMem32(0x001288cc,0x3c024398)
eeObj.WriteMem32(0x00166420,0x3c0243cc)
------------------------------------------------------/

--Popup portraits, Clock and etc.. by Arapapa
--02080046 b4f260e4 6c0080c4
eeObj.WriteMem32(0x004ac6a0,0x08030024)
eeObj.WriteMem32(0x000c0090,0x46000802)
eeObj.WriteMem32(0x000c0094,0x3c013f40)
eeObj.WriteMem32(0x000c0098,0x4481f000)
eeObj.WriteMem32(0x000c009c,0x461e0002)
eeObj.WriteMem32(0x000c00a0,0x0812b1a9)

------------------------------------------------
--Detect  'Open the in-game menu'
eeObj.WriteMem32(0x00020000,0x107D02C8)
eeObj.WriteMem32(0x004ac6a0,0x46000802)
eeObj.WriteMem32(0x00112e34,0x08030034)

eeObj.WriteMem32(0x00020000,0x007D02C8)
eeObj.WriteMem32(0x004ac6a0,0x08030024)
eeObj.WriteMem32(0x00112e34,0x84420000)

--Detect 'Scene changing'
--0040023c c0f2a0e4 20108046
--00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05 00 00 00 0F 00 00 00
eeObj.WriteMem32(0x00010000,0x107D0254)
eeObj.WriteMem32(0x004ac684,0x3c02402a)

eeObj.WriteMem32(0x00010000,0x007D0254)
eeObj.WriteMem32(0x004ac684,0x3c024000)
------------------------------------------

--Arcana Card Fix by Arapapa
eeObj.WriteMem32(0x003a1ef4,0x3c0242be)
eeObj.WriteMem32(0x003a1fc8,0x3c0242be)
eeObj.WriteMem32(0x003a1be0,0x3c024240)

--Shuffle Time (Card) Fix by Arpapa
--2c0000c6 6000a0e7
eeObj.WriteMem32(0x0020e294,0x08168fe4)
eeObj.WriteMem32(0x005a3f90,0xc600002c)
eeObj.WriteMem32(0x005a3f94,0x3c013f40)
eeObj.WriteMem32(0x005a3f98,0x3421aaab)
eeObj.WriteMem32(0x005a3f9c,0x4481f000)
eeObj.WriteMem32(0x005a3fa0,0x461e0002)
eeObj.WriteMem32(0x005a3fa4,0x080838a6)

------------------------------------------------------------/
--S.LINK - Community (2D Characters & Cards) fix by Arapapa
--000040c4 0000e0e4 040040c4 (3rd)
eeObj.WriteMem32(0x0011591c,0x08168fec)
eeObj.WriteMem32(0x005a3fb0,0xc4400000)
eeObj.WriteMem32(0x005a3fb4,0x3c013f40)
eeObj.WriteMem32(0x005a3fb8,0x4481f000)
eeObj.WriteMem32(0x005a3fbc,0x461e0002)
eeObj.WriteMem32(0x005a3fc0,0x08045648)

--S.LINK - Community 2D Characters X-position
--bb43023c 00088244 0002a0c7
eeObj.WriteMem32(0x0013b99c,0x3c024405)
--b143023c 00088244 f801a0c7
eeObj.WriteMem32(0x0013ba40,0x3c024400)

--S.LINK - Community Cards X-position
--c041023c 00088244 7800a0c7 (2nd)
eeObj.WriteMem32(0x00138a94,0x3c024250)

--S.LINK - Main Menu Shadows X-Position
--c842033c 00008344 00000000 410d0046 100055e4
--c842033c 00008344 00000000 01080046 100040e4 (4 times)
eeObj.WriteMem32(0x00137f9c,0x3c0341b0)
eeObj.WriteMem32(0x001390b4,0x3c0341b0)
eeObj.WriteMem32(0x00139714,0x3c0341b0)
eeObj.WriteMem32(0x00139cf0,0x3c0341b0)
eeObj.WriteMem32(0x0013a3cc,0x3c0341b0)

--S.LINK - Community Cards #2 X-Size
--000060c4 000000e5 040060c4 040000e5
eeObj.WriteMem32(0x001166e4,0x0803002c)
eeObj.WriteMem32(0x000c00b0,0xc4600000)
eeObj.WriteMem32(0x000c00b4,0x3c013f40)
eeObj.WriteMem32(0x000c00b8,0x4481f000)
eeObj.WriteMem32(0x000c00bc,0x461e0002)
eeObj.WriteMem32(0x000c00c0,0x080459ba)

--S.LINK - Community Cards #2 X-Position
--e041023c 00088244 7800a0c7 400b0046 (3rd)
eeObj.WriteMem32(0x0013accc,0x3c024256)

--S.LINK - Reverse Community Cards #1 X-Position
--c041023c 00088244 7800a0c7 (1st)
--8841023c 00088244 7800a0c7 (1st)
eeObj.WriteMem32(0x00138a38,0x3c024250)
eeObj.WriteMem32(0x00138b3c,0x3c0241b6)

--S.LINK - Reverse Community Cards #2
--4041023c 00008244 00000000 010b0046
eeObj.WriteMem32(0x0013ac34,0x3c024010)
--e041023c 00088244 7800a0c7 400b0046 (2nd)
eeObj.WriteMem32(0x0013ab60,0x3c024216)
------------------------------------------------------------/

--Popup Portraits (Left top, In the Battles) fix by Arapapa
--8045023c 00008244 00000000 42001546 (1st)
eeObj.WriteMem32(0x003cad74,0x3c024540)

--Popup Portraits (Left top, In the Battles) X-position
--100040e4 00009244 00000000 (2nd)
eeObj.WriteMem32(0x003cad44,0x00000000)

--8042023c 00108244 80c1023c
eeObj.WriteMem32(0x003ad458,0x3c020000)

--Flare effect fix by Arapapa
--0040023c 00088244 00000000 82090046
eeObj.WriteMem32(0x00349688,0x3c023fc0)

--42090046 2d180000 803f023c
eeObj.WriteMem32(0x003496a0,0x08030008)
eeObj.WriteMem32(0x000c0020,0x46000942)
eeObj.WriteMem32(0x000c0024,0x461e2943)
eeObj.WriteMem32(0x000c0028,0x080d25a9)

--Head Portraits (Right, In the Battles) fix by Arapapa
--10004426 7000a527 (1st)
eeObj.WriteMem32(0x0022f044,0x0803000c)
eeObj.WriteMem32(0x000c0030,0x26440010)
eeObj.WriteMem32(0x000c0034,0xc7bf0078)
eeObj.WriteMem32(0x000c0038,0x3c013f40)
eeObj.WriteMem32(0x000c003c,0x4481f000)
eeObj.WriteMem32(0x000c0040,0x461effc2)
eeObj.WriteMem32(0x000c0044,0xe7bf0078)
eeObj.WriteMem32(0x000c0048,0x0808bc12)

--10014426 7000a527 (1st)
eeObj.WriteMem32(0x0022f144,0x08030014)
eeObj.WriteMem32(0x000c0050,0x26440110)
eeObj.WriteMem32(0x000c0054,0xc7bf0078)
eeObj.WriteMem32(0x000c0058,0x3c013f40)
eeObj.WriteMem32(0x000c005c,0x4481f000)
eeObj.WriteMem32(0x000c0060,0x461effc2)
eeObj.WriteMem32(0x000c0064,0xe7bf0078)
eeObj.WriteMem32(0x000c0068,0x0808bc52)

--Head Portraits (Right, In the Battles) X-Position
--f041033c 00008344 00000000 c0051746 (1st)
eeObj.WriteMem32(0x0022f004,0x3c034220)

--Emoticon (In the Battles) fix by Arapapa
--30054426 7000a527
eeObj.WriteMem32(0x0022f5d8,0x0803001c)
eeObj.WriteMem32(0x000c0070,0x26440530)
eeObj.WriteMem32(0x000c0074,0xc7bf0078)
eeObj.WriteMem32(0x000c0078,0x3c013f40)
eeObj.WriteMem32(0x000c007c,0x4481f000)
eeObj.WriteMem32(0x000c0080,0x461effc2)
eeObj.WriteMem32(0x000c0084,0xe7bf0078)
eeObj.WriteMem32(0x000c0088,0x0808bd77)

--Emoticon X-Position
--e842033c 00008344 00000000 00001946
eeObj.WriteMem32(0x0022f598,0x3c0342d0)

--------------------------------------------/
--Title Menu fix by Arapapa
--803f023c 6800a2af 6c00a2af
eeObj.WriteMem32(0x00270144,0x3c013fab)
eeObj.WriteMem32(0x00270154,0xafa10068)
eeObj.WriteMem32(0x00270188,0xafa10068)
eeObj.WriteMem32(0x002701bc,0xafa10068)
eeObj.WriteMem32(0x002701f0,0xafa10068)
eeObj.WriteMem32(0x0027041c,0xafa10068)

--Title Menu (Shadow)
eeObj.WriteMem32(0x002703c0,0x3c02439b)

--Sub Menu - Select Episode (Shadow)
--00000000 9000b4e7 be42023c 
eeObj.WriteMem32(0x0026cda4,0xc78084dc)
eeObj.WriteMem32(0x0026cdb4,0x461e0002)
------------------------------------------

end

emuObj.AddVsyncHook(widescreen)