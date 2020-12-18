apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shin Megami Tensei: Persona 3 FES (SLUS-21621) (UNDUB)

--Widescreen 16:9 

--X-Fov by CeruleansBlue
eeObj.WriteMem32(0x007cad1c,0x3fe38e38)

--partial HUD fix
eeObj.WriteMem32(0x00106e30,0x3c043f40)
eeObj.WriteMem32(0x00106e38,0x00701821)
eeObj.WriteMem32(0x00106e3c,0x24632bac)
eeObj.WriteMem32(0x00106e44,0x00000000)
eeObj.WriteMem32(0x00106e48,0x24630004)
eeObj.WriteMem32(0x00106e4c,0x3c043f80)

--persona art fix
eeObj.WriteMem32(0x00114a1c,0x3c033ec0)
eeObj.WriteMem32(0x00114a2c,0x3c023f90)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x0010afd0,0x1462000a)
eeObj.WriteMem32(0x0010afd8,0x3c02c294)
eeObj.WriteMem32(0x0010afdc,0x10000008)
eeObj.WriteMem32(0x0010afec,0x00000000)
eeObj.WriteMem32(0x0010affc,0x3c02c1a8)
eeObj.WriteMem32(0x0010b010,0x00000000)

--Font fix by nemesis2000 (causes spacing errors)
eeObj.WriteMem32(0x003b14a4,0x00118903)
eeObj.WriteMem32(0x003b14a8,0x02338818)
eeObj.WriteMem32(0x003b14b0,0x8E93001c)
eeObj.WriteMem32(0x003b1558,0x82970003)
eeObj.WriteMem32(0x003b16a4,0x24130015)

eeObj.WriteMem32(0x003b392c,0x2415000c)
eeObj.WriteMem32(0x003b3944,0x3c0241a8)
eeObj.WriteMem32(0x003b3970,0x01154018)
eeObj.WriteMem32(0x003b3974,0x00084103)
eeObj.WriteMem32(0x003b3978,0x0100a82d)

--480p by asmodean
eeObj.WriteMem32(0x0019d320,0x3c040010)
eeObj.WriteMem32(0x0019d324,0x348426dc)
eeObj.WriteMem32(0x0019d328,0x8c820000)
eeObj.WriteMem32(0x0019d32c,0x38420001)
eeObj.WriteMem32(0x0019d330,0xac820000)
eeObj.WriteMem32(0x0019d334,0x000217fc)
eeObj.WriteMem32(0x0019d338,0x000217ff)
eeObj.WriteMem32(0x0019d33c,0x0000000f)
eeObj.WriteMem32(0x0019d340,0x42000038)
eeObj.WriteMem32(0x0019d344,0x03e00008)
eeObj.WriteMem32(0x0019d348,0x00000000)
eeObj.WriteMem32(0x0019d34c,0x00000001)

eeObj.WriteMem32(0x004f8edc,0x24110000)
eeObj.WriteMem32(0x004f8ee0,0x24120050)
eeObj.WriteMem32(0x004f8ee4,0x24020001)
eeObj.WriteMem32(0x004f8ee8,0x10820031)
eeObj.WriteMem32(0x004f8eec,0x24130001)

--zoom fix
--(ALL cheats must be loaded via cheats_ws or else it will freeze
--upon entering the protag's bedroom for the first time)
eeObj.WriteMem32(0x003bb94c,0x0c132e4c)
eeObj.WriteMem32(0x003bb950,0x0220202d)
eeObj.WriteMem32(0x003bb954,0x0220202d)
eeObj.WriteMem32(0x003bb958,0x0200282d)
eeObj.WriteMem32(0x003bb95c,0x0000302d)
eeObj.WriteMem32(0x003bb960,0x0c132dfc)
eeObj.WriteMem32(0x003bb964,0x00000000)
eeObj.WriteMem32(0x003bb968,0x0c130e20)
eeObj.WriteMem32(0x003bb96c,0x0200202d)
eeObj.WriteMem32(0x003bb970,0x0240202d)
eeObj.WriteMem32(0x003bb974,0x3c013fa1)
eeObj.WriteMem32(0x003bb978,0x44810000)
eeObj.WriteMem32(0x003bb97c,0xc66c0100)
eeObj.WriteMem32(0x003bb980,0x0c069160)
eeObj.WriteMem32(0x003bb984,0x46006303)


------------------------------------------------------/
/In-Game Menu  Portraits fix by Arapapa
--74008224 21104500 00004284
--74008224 21104500 00004294
--eeObj.WriteMem32(0x00112b94,0x08030034)
eeObj.WriteMem32(0x000c00d0,0x94420000)
eeObj.WriteMem32(0x000c00d4,0x01224821)
eeObj.WriteMem32(0x000c00d8,0x00421021)
eeObj.WriteMem32(0x000c00dc,0x01221021)
eeObj.WriteMem32(0x000c00e0,0x00021082)
eeObj.WriteMem32(0x000c00e4,0x08044ae6)

--Main Character X-Position
--d643033c
eeObj.WriteMem32(0x0011cb14,0x3c0343f0)
eeObj.WriteMem32(0x0011cbc4,0x3c0343f0)
eeObj.WriteMem32(0x0011d118,0x3c0343f0)
eeObj.WriteMem32(0x0011d7f4,0x3c0343f0)
eeObj.WriteMem32(0x0011e0dc,0x3c0343f0)
eeObj.WriteMem32(0x00125e94,0x3c0343f0)
eeObj.WriteMem32(0x001260c8,0x3c0343f0)
eeObj.WriteMem32(0x0014ca5c,0x3c0343f0)
eeObj.WriteMem32(0x00160914,0x3c0343f0)
eeObj.WriteMem32(0x00160b64,0x3c0343f0)
eeObj.WriteMem32(0x0018a744,0x3c0343f0)

--Menu (Status) Main Character X-Position #2
--c1010324 00008344 00000000 (2 times)
eeObj.WriteMem32(0x0012633c,0x240301f5)
eeObj.WriteMem32(0x00126530,0x240301f5)

--Partner Character X-Position
--b343023c
eeObj.WriteMem32(0x00164d84,0x3c0243d8)
eeObj.WriteMem32(0x001653f8,0x3c0243d8)
eeObj.WriteMem32(0x0016573c,0x3c0243d8)
eeObj.WriteMem32(0x00165b90,0x3c0243d8)
eeObj.WriteMem32(0x00166548,0x3c0243d8)

--Main Character (In-Game Menu)  Shadow
--803f023c b000a2af
--803f023c b000a1af
eeObj.WriteMem32(0x00126890,0x3c013fab)
eeObj.WriteMem32(0x001268b0,0xafa100b0)

--Shadow (In-Game Menu) X-Position fix
--3c43023c
--3c43023c 4802a2af 4c02a0af
eeObj.WriteMem32(0x00126ca4,0x3c024398)
eeObj.WriteMem32(0x00126dd8,0x3c024398)
eeObj.WriteMem32(0x00126efc,0x3c024398)
eeObj.WriteMem32(0x00127044,0x3c024398)
eeObj.WriteMem32(0x001270f0,0x3c024398)
eeObj.WriteMem32(0x00127184,0x3c024398)
eeObj.WriteMem32(0x0012729c,0x3c024398)
eeObj.WriteMem32(0x00164cf0,0x3c0243cc)
------------------------------------------------------/

--Popup portraits, Clock and etc.. fix by Arapapa
--02080046 b4f260e4 6c0080c4
eeObj.WriteMem32(0x004aa460,0x08030024)
eeObj.WriteMem32(0x000c0090,0x46000802)
eeObj.WriteMem32(0x000c0094,0x3c013f40)
eeObj.WriteMem32(0x000c0098,0x4481f000)
eeObj.WriteMem32(0x000c009c,0x461e0002)
eeObj.WriteMem32(0x000c00a0,0x0812a919)

------------------------------------------------
--Detect  'Open the in-game menu'
eeObj.WriteMem32(0x00020000,0x107cdf48)
eeObj.WriteMem32(0x004aa460,0x46000802)
eeObj.WriteMem32(0x00112b94,0x08030034)

eeObj.WriteMem32(0x00020000,0x007cdf48)
eeObj.WriteMem32(0x004aa460,0x08030024)
eeObj.WriteMem32(0x00112b94,0x84420000)

--Detect 'Scene changing'
--0040023c c0f2a0e4 20108046
--00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 64 00 00 00 00 00 00 00
eeObj.WriteMem32(0x00010000,0x107CDED4)
eeObj.WriteMem32(0x004aa444,0x3c02402a)

eeObj.WriteMem32(0x00010000,0x007CDED4)
eeObj.WriteMem32(0x004aa444,0x3c024000)
------------------------------------------------

--Arcana Card fix by Arapapa
--fe42023c 00608244
--be42023c 00608244 (twice)
eeObj.WriteMem32(0x003a0374,0x3c0242be)
eeObj.WriteMem32(0x003a0448,0x3c0242be)

--b442023c 00008244 00000000 41080046
--4042023c 00008244 00000000 41080046(2nd)
eeObj.WriteMem32(0x003a0060,0x3c024240)

--Shuffle Time (Card) fix by Arpapa
--2c0000c6 6000a0e7
eeObj.WriteMem32(0x0020caf4,0x08168754)
eeObj.WriteMem32(0x005a1d50,0xc600002c)
eeObj.WriteMem32(0x005a1d54,0x3c013f40)
eeObj.WriteMem32(0x005a1d58,0x4481f000)
eeObj.WriteMem32(0x005a1d5c,0x461e0002)
eeObj.WriteMem32(0x005a1d60,0x080832be)

----------------------------------------------------------/
--S.LINK - Community (2D Characters & Cards) fix by Arapapa
--000040c4 0000e0e4 040040c4 (3rd)
eeObj.WriteMem32(0x00114390,0x0816875a)
eeObj.WriteMem32(0x005a1d68,0xc4400000)
eeObj.WriteMem32(0x005a1d6c,0x3c013f40)
eeObj.WriteMem32(0x005a1d70,0x4481f000)
eeObj.WriteMem32(0x005a1d74,0x461e0002)
eeObj.WriteMem32(0x005a1d78,0x080450e5)

--S.LINK - Community 2D Characters X-Position
--bb43023c 00088244 0002a0c7
eeObj.WriteMem32(0x0013a2ac,0x3c024405)
--b143023c 00088244 f801a0c7
eeObj.WriteMem32(0x0013a350,0x3c024400)

--S.LINK - Community Cards X-Position
--c041023c 00088244 7800a0c7 (2nd)
eeObj.WriteMem32(0x001373f4,0x3c024250)

--S.LINK - Main Menu Shadows X-Position
--c842033c 00008344 00000000 410d0046 100055e4
--c842033c 00008344 00000000 01080046 100040e4 (4 times)
eeObj.WriteMem32(0x001368fc,0x3c0341b0)
eeObj.WriteMem32(0x001379f0,0x3c0341b0)
eeObj.WriteMem32(0x0013804c,0x3c0341b0)
eeObj.WriteMem32(0x00138618,0x3c0341b0)
eeObj.WriteMem32(0x00138ce4,0x3c0341b0)

--S.LINK - Community Cards #2 X-Size
--000060c4 000000e5 040060c4 040000e5
eeObj.WriteMem32(0x00115148,0x0803002c)
eeObj.WriteMem32(0x000c00b0,0xc4600000)
eeObj.WriteMem32(0x000c00b4,0x3c013f40)
eeObj.WriteMem32(0x000c00b8,0x4481f000)
eeObj.WriteMem32(0x000c00bc,0x461e0002)
eeObj.WriteMem32(0x000c00c0,0x08045453)

--S.LINK - Community Cards #2 X-Position
--e041023c 00088244 7800a0c7 400b0046 (3rd)
eeObj.WriteMem32(0x001395dc,0x3c024256)

--S.LINK - Reverse Community Cards #1 X-Position
--c041023c 00088244 7800a0c7 (1st)
--8841023c 00088244 7800a0c7 (1st)
eeObj.WriteMem32(0x00137398,0x3c024250)
eeObj.WriteMem32(0x0013749c,0x3c0241b6)

--S.LINK - Reverse Community Cards #2
--4041023c 00008244 00000000 010b0046
eeObj.WriteMem32(0x00139544,0x3c024010)
--e041023c 00088244 7800a0c7 400b0046 (2nd)
eeObj.WriteMem32(0x00139470,0x3c024216)
----------------------------------------------------------/

--Popup Portraits (Left top, In the Battles) fix by Arapapa
--8045023c 00008244 00000000 42001546 (1st)
eeObj.WriteMem32(0x003c90ac,0x3c024540)

--Popup Portraits (Left top, In the Battles) X-Position
--100040e4 00009244 00000000 (2nd)
eeObj.WriteMem32(0x003c9084,0x00000000)

--8042023c 00108244 80c1023c
eeObj.WriteMem32(0x003ab7f8,0x3c020000)

--Flare effect fix by Arapapa
--0040023c 00088244 00000000 82090046
eeObj.WriteMem32(0x00347b38,0x3c023fc0)

--42090046 2d180000 803f023c
eeObj.WriteMem32(0x00347b50,0x08030008)
eeObj.WriteMem32(0x000c0020,0x46000942)
eeObj.WriteMem32(0x000c0024,0x461e2943)
eeObj.WriteMem32(0x000c0028,0x080d1ed5)
----------------------------------------------------------/

--Head Portraits (Right, In the Battles) fix by Arapapa
--10004426 7000a527 (1st)
eeObj.WriteMem32(0x0022d804,0x0803000c)
eeObj.WriteMem32(0x000c0030,0x26440010)
eeObj.WriteMem32(0x000c0034,0xc7bf0078)
eeObj.WriteMem32(0x000c0038,0x3c013f40)
eeObj.WriteMem32(0x000c003c,0x4481f000)
eeObj.WriteMem32(0x000c0040,0x461effc2)
eeObj.WriteMem32(0x000c0044,0xe7bf0078)
eeObj.WriteMem32(0x000c0048,0x0808b602)

--10014426 7000a527 (1st)
eeObj.WriteMem32(0x0022d904,0x08030014)
eeObj.WriteMem32(0x000c0050,0x26440110)
eeObj.WriteMem32(0x000c0054,0xc7bf0078)
eeObj.WriteMem32(0x000c0058,0x3c013f40)
eeObj.WriteMem32(0x000c005c,0x4481f000)
eeObj.WriteMem32(0x000c0060,0x461effc2)
eeObj.WriteMem32(0x000c0064,0xe7bf0078)
eeObj.WriteMem32(0x000c0068,0x0808b642)

--Head Portraits (Right, In the Battles) X-Position
--f041033c 00008344 00000000 c0051746 (1st)
eeObj.WriteMem32(0x0022d7c4,0x3c034220)

--Emoticon (In the Battles) fix by Arapapa
--30054426 7000a527
eeObj.WriteMem32(0x0022dd98,0x0803001c)
eeObj.WriteMem32(0x000c0070,0x26440530)
eeObj.WriteMem32(0x000c0074,0xc7bf0078)
eeObj.WriteMem32(0x000c0078,0x3c013f40)
eeObj.WriteMem32(0x000c007c,0x4481f000)
eeObj.WriteMem32(0x000c0080,0x461effc2)
eeObj.WriteMem32(0x000c0084,0xe7bf0078)
eeObj.WriteMem32(0x000c0088,0x0808b767)

--Emoticon X-Position
--e842033c 00008344 00000000 00001946
eeObj.WriteMem32(0x0022dd58,0x3c0342d0)

--------------------------------------------/
--Title Menu fix by Arapapa
eeObj.WriteMem32(0x0026e7d4,0x3c013fab)
eeObj.WriteMem32(0x0026e7e4,0xafa10068)
eeObj.WriteMem32(0x0026e818,0xafa10068)
eeObj.WriteMem32(0x0026e84c,0xafa10068)
eeObj.WriteMem32(0x0026e880,0xafa10068)
eeObj.WriteMem32(0x0026eaac,0xafa10068)

--Title Menu (Shadow)
eeObj.WriteMem32(0x0026ea50,0x3c02439b)

--Sub Menu - Select Episode (Shadow)
eeObj.WriteMem32(0x0026b524,0xc7808478)
eeObj.WriteMem32(0x0026b534,0x461e0002)
------------------------------------------
end

emuObj.AddVsyncHook(widescreen)