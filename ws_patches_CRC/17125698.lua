apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- enable widescreen mode in options (single player)
eeObj.WriteMem32(0x00010032,0x001439f0)
eeObj.WriteMem32(0x001439fc,0x00000100)

-- enable widescreen mode in options (multiplayer)
eeObj.WriteMem32(0x00010032,0x001a58b0)
eeObj.WriteMem32(0x001a58bc,0x00000100)


-- values to check for loop
eeObj.WriteMem32(0x000c0000,0x000ffdac)
eeObj.WriteMem32(0x000ffdb0,0x3f1eb852)
eeObj.WriteMem32(0x000ffdb4,0x3f56cf3b)
eeObj.WriteMem32(0x000ffdb8,0x3ed40674)
eeObj.WriteMem32(0x000ffdbc,0x3f1eba08)
eeObj.WriteMem32(0x000ffdc0,0x3f199999)
eeObj.WriteMem32(0x000ffdc4,0x3f199b41)
eeObj.WriteMem32(0x000ffdc8,0x3f0f5db4)
eeObj.WriteMem32(0x000ffdcc,0x3f0f5c28)
eeObj.WriteMem32(0x000ffdd0,0x3f052027)
eeObj.WriteMem32(0x000ffdd4,0x3f051eb8)
eeObj.WriteMem32(0x000ffdd8,0x3f3340cc)
eeObj.WriteMem32(0x000ffddc,0x00000000)

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
eeObj.WriteMem32(0x0008caff,0x003877d0)
eeObj.WriteMem32(0x00387810,0x0803ff80)
eeObj.WriteMem32(0x00387814,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080e1e05)
eeObj.WriteMem32(0x00387824,0x1060000a)
eeObj.WriteMem32(0x003aa9b4,0x3c013f40)
eeObj.WriteMem32(0x003aa9b8,0x4481f000)
eeObj.WriteMem32(0x003aa9c4,0x461e1082)
eeObj.WriteMem32(0x003aa9e4,0x14400008)


-- Planet Veldin - Kyzil Plateau
eeObj.WriteMem32(0x0008caff,0x00401a68)
eeObj.WriteMem32(0x00401aa8,0x0803ff80)
eeObj.WriteMem32(0x00401aac,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081006ab)
eeObj.WriteMem32(0x00401abc,0x1060000a)
eeObj.WriteMem32(0x004cbe94,0x3c013f40)
eeObj.WriteMem32(0x004cbe98,0x4481f000)
eeObj.WriteMem32(0x004cbea4,0x461e1082)
eeObj.WriteMem32(0x004cbec4,0x14400008)


-- Planet Florana - Nabala Forest
eeObj.WriteMem32(0x0008caff,0x003dae48)
eeObj.WriteMem32(0x003dae88,0x0803ff80)
eeObj.WriteMem32(0x003dae8c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080f6ba3)
eeObj.WriteMem32(0x003dae9c,0x1060000a)
eeObj.WriteMem32(0x004a23ec,0x3c013f40)
eeObj.WriteMem32(0x004a23f0,0x4481f000)
eeObj.WriteMem32(0x004a23fc,0x461e1082)
eeObj.WriteMem32(0x004a241c,0x14400008)


-- Outer Space - Starship Phoenix
eeObj.WriteMem32(0x0008caff,0x003ef580)
eeObj.WriteMem32(0x003ef5c0,0x0803ff80)
eeObj.WriteMem32(0x003ef5c4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080fbd71)
eeObj.WriteMem32(0x003ef5d4,0x1060000a)
eeObj.WriteMem32(0x004b987c,0x3c013f40)
eeObj.WriteMem32(0x004b9880,0x4481f000)
eeObj.WriteMem32(0x004b988c,0x461e1082)
eeObj.WriteMem32(0x004b98ac,0x14400008)


-- Planet Marcadia - Capital City
eeObj.WriteMem32(0x0008caff,0x00412e28)
eeObj.WriteMem32(0x00412e68,0x0803ff80)
eeObj.WriteMem32(0x00412e6c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08104b9b)
eeObj.WriteMem32(0x00412e7c,0x1060000a)
eeObj.WriteMem32(0x004dbfa4,0x3c013f40)
eeObj.WriteMem32(0x004dbfa8,0x4481f000)
eeObj.WriteMem32(0x004dbfb4,0x461e1082)
eeObj.WriteMem32(0x004dbfd4,0x14400008)


-- Station Q9 - Annihilation Nation
eeObj.WriteMem32(0x0008caff,0x00402fc8)
eeObj.WriteMem32(0x00403008,0x0803ff80)
eeObj.WriteMem32(0x0040300c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08100c03)
eeObj.WriteMem32(0x0040301c,0x1060000a)
eeObj.WriteMem32(0x004cac3c,0x3c013f40)
eeObj.WriteMem32(0x004cac40,0x4481f000)
eeObj.WriteMem32(0x004cac4c,0x461e1082)
eeObj.WriteMem32(0x004cac6c,0x14400008)


-- Planet Aquatos - Deep Sea Hideout
eeObj.WriteMem32(0x0008caff,0x003e5da8)
eeObj.WriteMem32(0x003e5de8,0x0803ff80)
eeObj.WriteMem32(0x003e5dec,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080f977b)
eeObj.WriteMem32(0x003e5dfc,0x1060000a)
eeObj.WriteMem32(0x004ae254,0x3c013f40)
eeObj.WriteMem32(0x004ae258,0x4481f000)
eeObj.WriteMem32(0x004ae264,0x461e1082)
eeObj.WriteMem32(0x004ae284,0x14400008)


-- Planet Tyhrranosis - Korgon Base
eeObj.WriteMem32(0x0008caff,0x0041b600)
eeObj.WriteMem32(0x0041b640,0x0803ff80)
eeObj.WriteMem32(0x0041b644,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08106d91)
eeObj.WriteMem32(0x0041b654,0x1060000a)
eeObj.WriteMem32(0x004e5f74,0x3c013f40)
eeObj.WriteMem32(0x004e5f78,0x4481f000)
eeObj.WriteMem32(0x004e5f84,0x461e1082)
eeObj.WriteMem32(0x004e5fa4,0x14400008)


-- Planet Daxx - Research Facility
eeObj.WriteMem32(0x0008caff,0x003fba20)
eeObj.WriteMem32(0x003fba60,0x0803ff80)
eeObj.WriteMem32(0x003fba64,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080fee99)
eeObj.WriteMem32(0x003fba74,0x1060000a)
eeObj.WriteMem32(0x004c5334,0x3c013f40)
eeObj.WriteMem32(0x004c5338,0x4481f000)
eeObj.WriteMem32(0x004c5344,0x461e1082)
eeObj.WriteMem32(0x004c5364,0x14400008)


-- The Zygan System - Obani Gemini
eeObj.WriteMem32(0x0008caff,0x003db868)
eeObj.WriteMem32(0x003db8a8,0x0803ff80)
eeObj.WriteMem32(0x003db8ac,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080f6e2b)
eeObj.WriteMem32(0x003db8bc,0x1060000a)
eeObj.WriteMem32(0x004a2014,0x3c013f40)
eeObj.WriteMem32(0x004a2018,0x4481f000)
eeObj.WriteMem32(0x004a2024,0x461e1082)
eeObj.WriteMem32(0x004a2044,0x14400008)


-- Holostar Studios - Lot 42
eeObj.WriteMem32(0x0008caff,0x003e37c0)
eeObj.WriteMem32(0x003e3800,0x0803ff80)
eeObj.WriteMem32(0x003e3804,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080f8e01)
eeObj.WriteMem32(0x003e3814,0x1060000a)
eeObj.WriteMem32(0x004abe34,0x3c013f40)
eeObj.WriteMem32(0x004abe38,0x4481f000)
eeObj.WriteMem32(0x004abe44,0x461e1082)
eeObj.WriteMem32(0x004abe64,0x14400008)


-- Planet Rilgar - Blackwater City
eeObj.WriteMem32(0x0008caff,0x00403628)
eeObj.WriteMem32(0x00403668,0x0803ff80)
eeObj.WriteMem32(0x0040366c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08100d9b)
eeObj.WriteMem32(0x0040367c,0x1060000a)
eeObj.WriteMem32(0x004cd5dc,0x3c013f40)
eeObj.WriteMem32(0x004cd5e0,0x4481f000)
eeObj.WriteMem32(0x004cd5ec,0x461e1082)
eeObj.WriteMem32(0x004cd60c,0x14400008)


-- The Zygan System - Obani Draco
eeObj.WriteMem32(0x0008caff,0x003daec8)
eeObj.WriteMem32(0x003daf08,0x0803ff80)
eeObj.WriteMem32(0x003daf0c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080f6bc3)
eeObj.WriteMem32(0x003daf1c,0x1060000a)
eeObj.WriteMem32(0x004a2ccc,0x3c013f40)
eeObj.WriteMem32(0x004a2cd0,0x4481f000)
eeObj.WriteMem32(0x004a2cdc,0x461e1082)
eeObj.WriteMem32(0x004a2cfc,0x14400008)


-- Zeldrin Starport - Joreal Nebula
eeObj.WriteMem32(0x0008caff,0x003e5740)
eeObj.WriteMem32(0x003e5780,0x0803ff80)
eeObj.WriteMem32(0x003e5784,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080f95e1)
eeObj.WriteMem32(0x003e5794,0x1060000a)
eeObj.WriteMem32(0x004af09c,0x3c013f40)
eeObj.WriteMem32(0x004af0a0,0x4481f000)
eeObj.WriteMem32(0x004af0ac,0x461e1082)
eeObj.WriteMem32(0x004af0cc,0x14400008)


-- Planet Kerwan - Metropolis
eeObj.WriteMem32(0x0008caff,0x00411cc8)
eeObj.WriteMem32(0x00411d08,0x0803ff80)
eeObj.WriteMem32(0x00411d0c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08104743)
eeObj.WriteMem32(0x00411d1c,0x1060000a)
eeObj.WriteMem32(0x004dd624,0x3c013f40)
eeObj.WriteMem32(0x004dd628,0x4481f000)
eeObj.WriteMem32(0x004dd634,0x461e1082)
eeObj.WriteMem32(0x004dd654,0x14400008)


-- Planet Zeldrin - Crash Site
eeObj.WriteMem32(0x0008caff,0x003dda00)
eeObj.WriteMem32(0x003dda40,0x0803ff80)
eeObj.WriteMem32(0x003dda44,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080f7691)
eeObj.WriteMem32(0x003dda54,0x1060000a)
eeObj.WriteMem32(0x004a4f9c,0x3c013f40)
eeObj.WriteMem32(0x004a4fa0,0x4481f000)
eeObj.WriteMem32(0x004a4fac,0x461e1082)
eeObj.WriteMem32(0x004a4fcc,0x14400008)


-- Planet Aridia - Outpost X12
eeObj.WriteMem32(0x0008caff,0x00414fa0)
eeObj.WriteMem32(0x00414fe0,0x0803ff80)
eeObj.WriteMem32(0x00414fe4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081053f9)
eeObj.WriteMem32(0x00414ff4,0x1060000a)
eeObj.WriteMem32(0x004dec74,0x3c013f40)
eeObj.WriteMem32(0x004dec78,0x4481f000)
eeObj.WriteMem32(0x004dec84,0x461e1082)
eeObj.WriteMem32(0x004deca4,0x14400008)


-- Thran Asteroid Belt - Qwark's Hideout
eeObj.WriteMem32(0x0008caff,0x003f7028)
eeObj.WriteMem32(0x003f7068,0x0803ff80)
eeObj.WriteMem32(0x003f706c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080fdc1b)
eeObj.WriteMem32(0x003f707c,0x1060000a)
eeObj.WriteMem32(0x004c09dc,0x3c013f40)
eeObj.WriteMem32(0x004c09e0,0x4481f000)
eeObj.WriteMem32(0x004c09ec,0x461e1082)
eeObj.WriteMem32(0x004c0a0c,0x14400008)


-- Planet Koros - Nefarious BFG
eeObj.WriteMem32(0x0008caff,0x003ec548)
eeObj.WriteMem32(0x003ec588,0x0803ff80)
eeObj.WriteMem32(0x003ec58c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x080fb163)
eeObj.WriteMem32(0x003ec59c,0x1060000a)
eeObj.WriteMem32(0x004b686c,0x3c013f40)
eeObj.WriteMem32(0x004b6870,0x4481f000)
eeObj.WriteMem32(0x004b687c,0x461e1082)
eeObj.WriteMem32(0x004b689c,0x14400008)


-- Planet Mylon - Command Centre
eeObj.WriteMem32(0x0008caff,0x00407760)
eeObj.WriteMem32(0x004077a0,0x0803ff80)
eeObj.WriteMem32(0x004077a4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08101de9)
eeObj.WriteMem32(0x004077b4,0x1060000a)
eeObj.WriteMem32(0x004d2bac,0x3c013f40)
eeObj.WriteMem32(0x004d2bb0,0x4481f000)
eeObj.WriteMem32(0x004d2bbc,0x461e1082)
eeObj.WriteMem32(0x004d2bdc,0x14400008)


-- Planet Mylon - Launch Site
eeObj.WriteMem32(0x0008caff,0x00420bc8)
eeObj.WriteMem32(0x00420c08,0x0803ff80)
eeObj.WriteMem32(0x00420c0c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08108303)
eeObj.WriteMem32(0x00420c1c,0x1060000a)
eeObj.WriteMem32(0x004ebedc,0x3c013f40)
eeObj.WriteMem32(0x004ebee0,0x4481f000)
eeObj.WriteMem32(0x004ebeec,0x461e1082)
eeObj.WriteMem32(0x004ebf0c,0x14400008)


-- Multiplayer Bakisi Isles
eeObj.WriteMem32(0x0008caff,0x00454220)
eeObj.WriteMem32(0x00454260,0x0803ff80)
eeObj.WriteMem32(0x00454264,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08115099)
eeObj.WriteMem32(0x00454274,0x1060000a)
eeObj.WriteMem32(0x004d2f64,0x3c013f40)
eeObj.WriteMem32(0x004d2f68,0x4481f000)
eeObj.WriteMem32(0x004d2f74,0x461e1082)
eeObj.WriteMem32(0x004d2f94,0x14400008)


-- Multiplayer Hoven Gorge
eeObj.WriteMem32(0x0008caff,0x00455da0)
eeObj.WriteMem32(0x00455de0,0x0803ff80)
eeObj.WriteMem32(0x00455de4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08115779)
eeObj.WriteMem32(0x00455df4,0x1060000a)
eeObj.WriteMem32(0x004d507c,0x3c013f40)
eeObj.WriteMem32(0x004d5080,0x4481f000)
eeObj.WriteMem32(0x004d508c,0x461e1082)
eeObj.WriteMem32(0x004d50ac,0x14400008)


-- Multiplayer Outpost X12
eeObj.WriteMem32(0x0008caff,0x0044cba0)
eeObj.WriteMem32(0x0044cbe0,0x0803ff80)
eeObj.WriteMem32(0x0044cbe4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081132f9)
eeObj.WriteMem32(0x0044cbf4,0x1060000a)
eeObj.WriteMem32(0x004ca954,0x3c013f40)
eeObj.WriteMem32(0x004ca958,0x4481f000)
eeObj.WriteMem32(0x004ca964,0x461e1082)
eeObj.WriteMem32(0x004ca984,0x14400008)


-- Multiplayer Korgon Outpost
eeObj.WriteMem32(0x0008caff,0x0044a760)
eeObj.WriteMem32(0x0044a7a0,0x0803ff80)
eeObj.WriteMem32(0x0044a7a4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081129e9)
eeObj.WriteMem32(0x0044a7b4,0x1060000a)
eeObj.WriteMem32(0x004c80ec,0x3c013f40)
eeObj.WriteMem32(0x004c80f0,0x4481f000)
eeObj.WriteMem32(0x004c80fc,0x461e1082)
eeObj.WriteMem32(0x004c811c,0x14400008)


-- Multiplayer Metropolis
eeObj.WriteMem32(0x0008caff,0x00449aa0)
eeObj.WriteMem32(0x00449ae0,0x0803ff80)
eeObj.WriteMem32(0x00449ae4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081126b9)
eeObj.WriteMem32(0x00449af4,0x1060000a)
eeObj.WriteMem32(0x004c743c,0x3c013f40)
eeObj.WriteMem32(0x004c7440,0x4481f000)
eeObj.WriteMem32(0x004c744c,0x461e1082)
eeObj.WriteMem32(0x004c746c,0x14400008)


-- Multiplayer Blackwater City
eeObj.WriteMem32(0x0008caff,0x004472a0)
eeObj.WriteMem32(0x004472e0,0x0803ff80)
eeObj.WriteMem32(0x004472e4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08111cb9)
eeObj.WriteMem32(0x004472f4,0x1060000a)
eeObj.WriteMem32(0x004c4cd4,0x3c013f40)
eeObj.WriteMem32(0x004c4cd8,0x4481f000)
eeObj.WriteMem32(0x004c4ce4,0x461e1082)
eeObj.WriteMem32(0x004c4d04,0x14400008)


-- Multiplayer Command Center
eeObj.WriteMem32(0x0008caff,0x00447f20)
eeObj.WriteMem32(0x00447f60,0x0803ff80)
eeObj.WriteMem32(0x00447f64,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08111fd9)
eeObj.WriteMem32(0x00447f74,0x1060000a)
eeObj.WriteMem32(0x004c4ccc,0x3c013f40)
eeObj.WriteMem32(0x004c4cd0,0x4481f000)
eeObj.WriteMem32(0x004c4cdc,0x461e1082)
eeObj.WriteMem32(0x004c4cfc,0x14400008)


-- Multiplayer Blackwater Docks
eeObj.WriteMem32(0x0008caff,0x0044a7a0)
eeObj.WriteMem32(0x0044a7e0,0x0803ff80)
eeObj.WriteMem32(0x0044a7e4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081129f9)
eeObj.WriteMem32(0x0044a7f4,0x1060000a)
eeObj.WriteMem32(0x004c754c,0x3c013f40)
eeObj.WriteMem32(0x004c7550,0x4481f000)
eeObj.WriteMem32(0x004c755c,0x461e1082)
eeObj.WriteMem32(0x004c757c,0x14400008)


-- Multiplayer Aquatos Sewers
eeObj.WriteMem32(0x0008caff,0x00449aa0)
eeObj.WriteMem32(0x00449ae0,0x0803ff80)
eeObj.WriteMem32(0x00449ae4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081126b9)
eeObj.WriteMem32(0x00449af4,0x1060000a)
eeObj.WriteMem32(0x004c684c,0x3c013f40)
eeObj.WriteMem32(0x004c6850,0x4481f000)
eeObj.WriteMem32(0x004c685c,0x461e1082)
eeObj.WriteMem32(0x004c687c,0x14400008)


-- Multiplayer Marcadia Palace
eeObj.WriteMem32(0x0008caff,0x00449420)
eeObj.WriteMem32(0x00449460,0x0803ff80)
eeObj.WriteMem32(0x00449464,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08112519)
eeObj.WriteMem32(0x00449474,0x1060000a)
eeObj.WriteMem32(0x004c61cc,0x3c013f40)
eeObj.WriteMem32(0x004c61d0,0x4481f000)
eeObj.WriteMem32(0x004c61dc,0x461e1082)
eeObj.WriteMem32(0x004c61fc,0x14400008)


-- Multiplayer Bakisi Isles (split-screen)
eeObj.WriteMem32(0x0008caff,0x00465220)
eeObj.WriteMem32(0x00465260,0x0803ff80)
eeObj.WriteMem32(0x00465264,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08119499)
eeObj.WriteMem32(0x00465274,0x1060000a)
eeObj.WriteMem32(0x004e3f64,0x3c013f40)
eeObj.WriteMem32(0x004e3f68,0x4481f000)
eeObj.WriteMem32(0x004e3f74,0x461e1082)
eeObj.WriteMem32(0x004e3f94,0x14400008)


-- Multiplayer Hoven Gorge (split-screen)
eeObj.WriteMem32(0x0008caff,0x00466da0)
eeObj.WriteMem32(0x00466de0,0x0803ff80)
eeObj.WriteMem32(0x00466de4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08119b79)
eeObj.WriteMem32(0x00466df4,0x1060000a)
eeObj.WriteMem32(0x004e607c,0x3c013f40)
eeObj.WriteMem32(0x004e6080,0x4481f000)
eeObj.WriteMem32(0x004e608c,0x461e1082)
eeObj.WriteMem32(0x004e60ac,0x14400008)


-- Multiplayer Outpost X12 (split-screen)
eeObj.WriteMem32(0x0008caff,0x0045dba0)
eeObj.WriteMem32(0x0045dbe0,0x0803ff80)
eeObj.WriteMem32(0x0045dbe4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081176f9)
eeObj.WriteMem32(0x0045dbf4,0x1060000a)
eeObj.WriteMem32(0x004db954,0x3c013f40)
eeObj.WriteMem32(0x004db958,0x4481f000)
eeObj.WriteMem32(0x004db964,0x461e1082)
eeObj.WriteMem32(0x004db984,0x14400008)


-- Multiplayer Korgon Outpost (split-screen)
eeObj.WriteMem32(0x0008caff,0x0045b760)
eeObj.WriteMem32(0x0045b7a0,0x0803ff80)
eeObj.WriteMem32(0x0045b7a4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08116de9)
eeObj.WriteMem32(0x0045b7b4,0x1060000a)
eeObj.WriteMem32(0x004d90ec,0x3c013f40)
eeObj.WriteMem32(0x004d90f0,0x4481f000)
eeObj.WriteMem32(0x004d90fc,0x461e1082)
eeObj.WriteMem32(0x004d911c,0x14400008)


-- Multiplayer Metropolis (split-screen)
eeObj.WriteMem32(0x0008caff,0x0045aaa0)
eeObj.WriteMem32(0x0045aae0,0x0803ff80)
eeObj.WriteMem32(0x0045aae4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08116ab9)
eeObj.WriteMem32(0x0045aaf4,0x1060000a)
eeObj.WriteMem32(0x004d843c,0x3c013f40)
eeObj.WriteMem32(0x004d8440,0x4481f000)
eeObj.WriteMem32(0x004d844c,0x461e1082)
eeObj.WriteMem32(0x004d846c,0x14400008)


-- Multiplayer Blackwater City (split-screen)
eeObj.WriteMem32(0x0008caff,0x004582a0)
eeObj.WriteMem32(0x004582e0,0x0803ff80)
eeObj.WriteMem32(0x004582e4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081160b9)
eeObj.WriteMem32(0x004582f4,0x1060000a)
eeObj.WriteMem32(0x004d5cd4,0x3c013f40)
eeObj.WriteMem32(0x004d5cd8,0x4481f000)
eeObj.WriteMem32(0x004d5ce4,0x461e1082)
eeObj.WriteMem32(0x004d5d04,0x14400008)


-- Multiplayer Command Center (split-screen)
-- uses same addresses as non split-screen


-- Multiplayer Blackwater Docks (split-screen)
-- uses same addresses as non split-screen


-- Multiplayer Aquatos Sewers (split-screen)
-- uses same addresses as non split-screen


-- Multiplayer Marcadia Palace (split-screen)
-- uses same addresses as non split-screen

end

emuObj.AddVsyncHook(widescreen)