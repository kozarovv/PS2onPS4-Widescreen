apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- enable widescreen mode in options
eeObj.WriteMem32(0x00010400,0x001a7c28)
eeObj.WriteMem32(0x001a7c38,0x01010100)


-- values to check for loop
eeObj.WriteMem32(0x000c0000,0x000ffdac)
eeObj.WriteMem32(0x000ffdb0,0x3f214633)
eeObj.WriteMem32(0x000ffdb4,0x3f2147ae)
eeObj.WriteMem32(0x000ffdb8,0x3f1eb852)
eeObj.WriteMem32(0x000ffdbc,0x3f1ff770)
eeObj.WriteMem32(0x000ffdc0,0x3ed40674)
eeObj.WriteMem32(0x000ffdc4,0x00000000)

-- 16:9 code-inject function (loop)
eeObj.WriteMem32(0x00160000,0x000ffdfc)
eeObj.WriteMem32(0x000ffe00,0x3c013f40)
eeObj.WriteMem32(0x000ffe04,0x34210001)
eeObj.WriteMem32(0x000ffe08,0x4481f000)
eeObj.WriteMem32(0x000ffe0c,0x3c180010)
eeObj.WriteMem32(0x000ffe10,0x2318fdb0)
eeObj.WriteMem32(0x000ffe14,0x8f010000)
eeObj.WriteMem32(0x000ffe18,0x1020000c)
eeObj.WriteMem32(0x000ffe1c,0x00000000)
eeObj.WriteMem32(0x000ffe20,0x8f010000)
eeObj.WriteMem32(0x000ffe24,0x8c7900b0)
eeObj.WriteMem32(0x000ffe28,0x14390004)
eeObj.WriteMem32(0x000ffe2c,0x00000000)
eeObj.WriteMem32(0x000ffe30,0x4481f800)
eeObj.WriteMem32(0x000ffe34,0x461effc3)
eeObj.WriteMem32(0x000ffe38,0xe47f00b0)
eeObj.WriteMem32(0x000ffe3c,0x00000000)
eeObj.WriteMem32(0x000ffe40,0x23180004)
eeObj.WriteMem32(0x000ffe44,0x0803ff85)
eeObj.WriteMem32(0x000ffe48,0x00000000)
eeObj.WriteMem32(0x000ffe4c,0xc46000b0)
eeObj.WriteMem32(0x000ffe50,0x461e0002)
eeObj.WriteMem32(0x000ffe54,0x46010002)


-- Intro
eeObj.WriteMem32(0x0008caff,0x0027af4c)
eeObj.WriteMem32(0x0027af8c,0x0803ff80)
eeObj.WriteMem32(0x0027af90,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0809ebe4)
eeObj.WriteMem32(0x0027afa0,0x14400007)
eeObj.WriteMem32(0x00301d34,0x3c013f40)
eeObj.WriteMem32(0x00301d38,0x4481f000)
eeObj.WriteMem32(0x00301d44,0x461e0002)
eeObj.WriteMem32(0x00301d5c,0x14600008)


-- Planet Aranos
eeObj.WriteMem32(0x0008caff,0x002e5a74)
eeObj.WriteMem32(0x002e5ab4,0x0803ff80)
eeObj.WriteMem32(0x002e5ab8,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080b96ae)
eeObj.WriteMem32(0x002e5ac8,0x14400007)
eeObj.WriteMem32(0x00383544,0x3c013f40)
eeObj.WriteMem32(0x00383548,0x4481f000)
eeObj.WriteMem32(0x00383554,0x461e0002)
eeObj.WriteMem32(0x0038356c,0x14600008)


-- Planet Oozla - Megacorp Outlet
eeObj.WriteMem32(0x0008caff,0x002daf8c)
eeObj.WriteMem32(0x002dafcc,0x0803ff80)
eeObj.WriteMem32(0x002dafd0,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080b6bf4)
eeObj.WriteMem32(0x002dafe0,0x14400007)
eeObj.WriteMem32(0x00379604,0x3c013f40)
eeObj.WriteMem32(0x00379608,0x4481f000)
eeObj.WriteMem32(0x00379614,0x461e0002)
eeObj.WriteMem32(0x0037962c,0x14600008)


-- Whupash Nebula
eeObj.WriteMem32(0x0008caff,0x002f8b14)
eeObj.WriteMem32(0x002f8b54,0x0803ff80)
eeObj.WriteMem32(0x002f8b58,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080be2d6)
eeObj.WriteMem32(0x002f8b68,0x14400007)
eeObj.WriteMem32(0x003925fc,0x3c013f40)
eeObj.WriteMem32(0x00392600,0x4481f000)
eeObj.WriteMem32(0x0039260c,0x461e0002)
eeObj.WriteMem32(0x00392624,0x14600008)


-- Maktar Nebula - Maktar Resort
eeObj.WriteMem32(0x0008caff,0x002e8f8c)
eeObj.WriteMem32(0x002e8fcc,0x0803ff80)
eeObj.WriteMem32(0x002e8fd0,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080ba3f4)
eeObj.WriteMem32(0x002e8fe0,0x14400007)
eeObj.WriteMem32(0x0038adf4,0x3c013f40)
eeObj.WriteMem32(0x0038adf8,0x4481f000)
eeObj.WriteMem32(0x0038ae04,0x461e0002)
eeObj.WriteMem32(0x0038ae1c,0x14600008)


-- Planet Endako - Megapolis
eeObj.WriteMem32(0x0008caff,0x002e655c)
eeObj.WriteMem32(0x002e659c,0x0803ff80)
eeObj.WriteMem32(0x002e65a0,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080b9968)
eeObj.WriteMem32(0x002e65b0,0x14400007)
eeObj.WriteMem32(0x00384b2c,0x3c013f40)
eeObj.WriteMem32(0x00384b30,0x4481f000)
eeObj.WriteMem32(0x00384b3c,0x461e0002)
eeObj.WriteMem32(0x00384b54,0x14600008)


-- Planet Barlow - Vukovar Canyon
eeObj.WriteMem32(0x0008caff,0x003061cc)
eeObj.WriteMem32(0x0030620c,0x0803ff80)
eeObj.WriteMem32(0x00306210,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080c1884)
eeObj.WriteMem32(0x00306220,0x14400007)
eeObj.WriteMem32(0x003a92ac,0x3c013f40)
eeObj.WriteMem32(0x003a92b0,0x4481f000)
eeObj.WriteMem32(0x003a92bc,0x461e0002)
eeObj.WriteMem32(0x003a92d4,0x14600008)


-- Feltzin System - Thug Rendezvous
eeObj.WriteMem32(0x0008caff,0x002fe194)
eeObj.WriteMem32(0x002fe1d4,0x0803ff80)
eeObj.WriteMem32(0x002fe1d8,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080bf876)
eeObj.WriteMem32(0x002fe1e8,0x14400007)
eeObj.WriteMem32(0x0039878c,0x3c013f40)
eeObj.WriteMem32(0x00398790,0x4481f000)
eeObj.WriteMem32(0x0039879c,0x461e0002)
eeObj.WriteMem32(0x003987b4,0x14600008)


-- Planet Notak - Canal City
eeObj.WriteMem32(0x0008caff,0x003251dc)
eeObj.WriteMem32(0x0032521c,0x0803ff80)
eeObj.WriteMem32(0x00325220,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080c9488)
eeObj.WriteMem32(0x00325230,0x14400007)
eeObj.WriteMem32(0x003c6ce4,0x3c013f40)
eeObj.WriteMem32(0x003c6ce8,0x4481f000)
eeObj.WriteMem32(0x003c6cf4,0x461e0002)
eeObj.WriteMem32(0x003c6d0c,0x14600008)


-- Planet Siberius - Frozen Base
eeObj.WriteMem32(0x0008caff,0x002db92c)
eeObj.WriteMem32(0x002db96c,0x0803ff80)
eeObj.WriteMem32(0x002db970,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080b6e5c)
eeObj.WriteMem32(0x002db980,0x14400007)
eeObj.WriteMem32(0x00379444,0x3c013f40)
eeObj.WriteMem32(0x00379448,0x4481f000)
eeObj.WriteMem32(0x00379454,0x461e0002)
eeObj.WriteMem32(0x0037946c,0x14600008)


-- Planet Tabora - Mining Area
eeObj.WriteMem32(0x0008caff,0x002f17c4)
eeObj.WriteMem32(0x002f1804,0x0803ff80)
eeObj.WriteMem32(0x002f1808,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080bc602)
eeObj.WriteMem32(0x002f1818,0x14400007)
eeObj.WriteMem32(0x00393f1c,0x3c013f40)
eeObj.WriteMem32(0x00393f20,0x4481f000)
eeObj.WriteMem32(0x00393f2c,0x461e0002)
eeObj.WriteMem32(0x00393f44,0x14600008)


-- Planet Dobbo - Testing Facility
eeObj.WriteMem32(0x0008caff,0x002e1a6c)
eeObj.WriteMem32(0x002e1aac,0x0803ff80)
eeObj.WriteMem32(0x002e1ab0,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080b86ac)
eeObj.WriteMem32(0x002e1ac0,0x14400007)
eeObj.WriteMem32(0x003809fc,0x3c013f40)
eeObj.WriteMem32(0x00380a00,0x4481f000)
eeObj.WriteMem32(0x00380a0c,0x461e0002)
eeObj.WriteMem32(0x00380a24,0x14600008)


-- Hrugis Cloud - Deep Space Disposal
eeObj.WriteMem32(0x0008caff,0x00300694)
eeObj.WriteMem32(0x003006d4,0x0803ff80)
eeObj.WriteMem32(0x003006d8,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080c01b6)
eeObj.WriteMem32(0x003006e8,0x14400007)
eeObj.WriteMem32(0x0039a46c,0x3c013f40)
eeObj.WriteMem32(0x0039a470,0x4481f000)
eeObj.WriteMem32(0x0039a47c,0x461e0002)
eeObj.WriteMem32(0x0039a494,0x14600008)


-- Planet Joba - Megacorp Games
eeObj.WriteMem32(0x0008caff,0x002f7724)
eeObj.WriteMem32(0x002f7764,0x0803ff80)
eeObj.WriteMem32(0x002f7768,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080bddda)
eeObj.WriteMem32(0x002f7778,0x14400007)
eeObj.WriteMem32(0x00397d54,0x3c013f40)
eeObj.WriteMem32(0x00397d58,0x4481f000)
eeObj.WriteMem32(0x00397d64,0x461e0002)
eeObj.WriteMem32(0x00397d7c,0x14600008)


-- Planet Todano - Megacorp Armory
eeObj.WriteMem32(0x0008caff,0x002e8f7c)
eeObj.WriteMem32(0x002e8fbc,0x0803ff80)
eeObj.WriteMem32(0x002e8fc0,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080ba3f0)
eeObj.WriteMem32(0x002e8fd0,0x14400007)
eeObj.WriteMem32(0x00388c7c,0x3c013f40)
eeObj.WriteMem32(0x00388c80,0x4481f000)
eeObj.WriteMem32(0x00388c8c,0x461e0002)
eeObj.WriteMem32(0x00388ca4,0x14600008)


-- Planet Boldan - Silver City
eeObj.WriteMem32(0x0008caff,0x002f0564)
eeObj.WriteMem32(0x002f05a4,0x0803ff80)
eeObj.WriteMem32(0x002f05a8,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080bc16a)
eeObj.WriteMem32(0x002f05b8,0x14400007)
eeObj.WriteMem32(0x0038cf0c,0x3c013f40)
eeObj.WriteMem32(0x0038cf10,0x4481f000)
eeObj.WriteMem32(0x0038cf1c,0x461e0002)
eeObj.WriteMem32(0x0038cf34,0x14600008)


-- Planet Aranos - Flying Lab (Revisited)
eeObj.WriteMem32(0x0008caff,0x002ed374)
eeObj.WriteMem32(0x002ed3b4,0x0803ff80)
eeObj.WriteMem32(0x002ed3b8,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080bb4ee)
eeObj.WriteMem32(0x002ed3c8,0x14400007)
eeObj.WriteMem32(0x0038dd94,0x3c013f40)
eeObj.WriteMem32(0x0038dd98,0x4481f000)
eeObj.WriteMem32(0x0038dda4,0x461e0002)
eeObj.WriteMem32(0x0038ddbc,0x14600008)


-- Planet Gorn - Thug-4-Less Fleet
eeObj.WriteMem32(0x0008caff,0x002fe814)
eeObj.WriteMem32(0x002fe854,0x0803ff80)
eeObj.WriteMem32(0x002fe858,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080bfa16)
eeObj.WriteMem32(0x002fe868,0x14400007)
eeObj.WriteMem32(0x0039f1c4,0x3c013f40)
eeObj.WriteMem32(0x0039f1c8,0x4481f000)
eeObj.WriteMem32(0x0039f1d4,0x461e0002)
eeObj.WriteMem32(0x0039f1ec,0x14600008)


-- Planet Snivelak - Thug HQ
eeObj.WriteMem32(0x0008caff,0x002dec34)
eeObj.WriteMem32(0x002dec74,0x0803ff80)
eeObj.WriteMem32(0x002dec78,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080b7b1e)
eeObj.WriteMem32(0x002dec88,0x14400007)
eeObj.WriteMem32(0x0037b18c,0x3c013f40)
eeObj.WriteMem32(0x0037b190,0x4481f000)
eeObj.WriteMem32(0x0037b19c,0x461e0002)
eeObj.WriteMem32(0x0037b1b4,0x14600008)


-- Planet Smolg - Distribution Facility
eeObj.WriteMem32(0x0008caff,0x002e6b34)
eeObj.WriteMem32(0x002e6b74,0x0803ff80)
eeObj.WriteMem32(0x002e6b78,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080b9ade)
eeObj.WriteMem32(0x002e6b88,0x14400007)
eeObj.WriteMem32(0x00386bbc,0x3c013f40)
eeObj.WriteMem32(0x00386bc0,0x4481f000)
eeObj.WriteMem32(0x00386bcc,0x461e0002)
eeObj.WriteMem32(0x00386be4,0x14600008)


-- Planet Damosel - Allgon City
eeObj.WriteMem32(0x0008caff,0x003002bc)
eeObj.WriteMem32(0x003002fc,0x0803ff80)
eeObj.WriteMem32(0x00300300,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080c00c0)
eeObj.WriteMem32(0x00300310,0x14400007)
eeObj.WriteMem32(0x003a192c,0x3c013f40)
eeObj.WriteMem32(0x003a1930,0x4481f000)
eeObj.WriteMem32(0x003a193c,0x461e0002)
eeObj.WriteMem32(0x003a1954,0x14600008)


-- Planet Grelbin - Tundor Wastes
eeObj.WriteMem32(0x0008caff,0x002e335c)
eeObj.WriteMem32(0x002e339c,0x0803ff80)
eeObj.WriteMem32(0x002e33a0,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080b8ce8)
eeObj.WriteMem32(0x002e33b0,0x14400007)
eeObj.WriteMem32(0x003813f4,0x3c013f40)
eeObj.WriteMem32(0x003813f8,0x4481f000)
eeObj.WriteMem32(0x00381404,0x461e0002)
eeObj.WriteMem32(0x0038141c,0x14600008)


-- Planet Yeedil - Protopet Factory
eeObj.WriteMem32(0x0008caff,0x002f9ac4)
eeObj.WriteMem32(0x002f9b04,0x0803ff80)
eeObj.WriteMem32(0x002f9b08,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080be6c2)
eeObj.WriteMem32(0x002f9b18,0x14400007)
eeObj.WriteMem32(0x0039b7dc,0x3c013f40)
eeObj.WriteMem32(0x0039b7e0,0x4481f000)
eeObj.WriteMem32(0x0039b7ec,0x461e0002)
eeObj.WriteMem32(0x0039b804,0x14600008)


-- Ship Shack - Slim Cognito's
eeObj.WriteMem32(0x0008caff,0x002e4a14)
eeObj.WriteMem32(0x002e4a54,0x0803ff80)
eeObj.WriteMem32(0x002e4a58,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080b9296)
eeObj.WriteMem32(0x002e4a68,0x14400007)
eeObj.WriteMem32(0x0037a6cc,0x3c013f40)
eeObj.WriteMem32(0x0037a6d0,0x4481f000)
eeObj.WriteMem32(0x0037a6dc,0x461e0002)
eeObj.WriteMem32(0x0037a6f4,0x14600008)
end

emuObj.AddVsyncHook(widescreen)