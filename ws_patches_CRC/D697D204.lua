apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ratchet - Gladiator (PAL-M5) (SCES-53285)
--comment=Widescreen hack by ElHecht

-- enable widescreen mode in options
eeObj.WriteMem32(0x00010032,0x00171e5c)
eeObj.WriteMem32(0x00171e6b,0x00000001)


-- values to check for loop
eeObj.WriteMem32(0x00090000,0x000ffdac)
eeObj.WriteMem32(0x000ffdb0,0x3f1eb852)
eeObj.WriteMem32(0x000ffdb4,0x3ed40674)
eeObj.WriteMem32(0x000ffdb8,0x3f1eba08)
eeObj.WriteMem32(0x000ffdbc,0x3ee978d5)
eeObj.WriteMem32(0x000ffdc0,0x3f5a3d70)
eeObj.WriteMem32(0x000ffdc4,0x3f5a3fcb)
eeObj.WriteMem32(0x000ffdc8,0x3f870cae)
eeObj.WriteMem32(0x000ffdcc,0x3f53a04b)
eeObj.WriteMem32(0x000ffdd0,0x00000000)


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
eeObj.WriteMem32(0x0004caff,0x00448224)
eeObj.WriteMem32(0x00448270,0x0803ff80)
eeObj.WriteMem32(0x00448274,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0811209d)
eeObj.WriteMem32(0x00448284,0x14600007)


-- DreadZone Station
eeObj.WriteMem32(0x0008caff,0x00549494)
eeObj.WriteMem32(0x005494e0,0x0803ff80)
eeObj.WriteMem32(0x005494e4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08152539)
eeObj.WriteMem32(0x005494f4,0x14600007)
eeObj.WriteMem32(0x00537a30,0x461e0543)
eeObj.WriteMem32(0x0053add4,0x461e0543)
eeObj.WriteMem32(0x006365fc,0x3c013f1c)
eeObj.WriteMem32(0x00636608,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x00549494)
eeObj.WriteMem32(0x0054b540,0x14400007)
eeObj.WriteMem32(0x0065a06c,0x14600009)
eeObj.WriteMem32(0x0065baa4,0x14600009)
eeObj.WriteMem32(0x0066a490,0x1440000f)
eeObj.WriteMem32(0x0052a03c,0x1440006e)


-- Catacrom Four
eeObj.WriteMem32(0x0008caff,0x004fbd4c)
eeObj.WriteMem32(0x004fbd98,0x0803ff80)
eeObj.WriteMem32(0x004fbd9c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0813ef67)
eeObj.WriteMem32(0x004fbdac,0x14600007)
eeObj.WriteMem32(0x004ea2e8,0x461e0543)
eeObj.WriteMem32(0x004ed68c,0x461e0543)
eeObj.WriteMem32(0x005e606c,0x3c013f1c)
eeObj.WriteMem32(0x005e6078,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x004fbd4c)
eeObj.WriteMem32(0x004fdd80,0x14400007)
eeObj.WriteMem32(0x00609a1c,0x14600009)
eeObj.WriteMem32(0x0060b454,0x14600009)
eeObj.WriteMem32(0x00619e40,0x1440000f)
eeObj.WriteMem32(0x004e0f3c,0x1440006e)


-- Serathos
eeObj.WriteMem32(0x0008caff,0x004fbf5c)
eeObj.WriteMem32(0x004fbfa8,0x0803ff80)
eeObj.WriteMem32(0x004fbfac,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0813efeb)
eeObj.WriteMem32(0x004fbfbc,0x14600007)
eeObj.WriteMem32(0x004ea4f8,0x461e0543)
eeObj.WriteMem32(0x004ed89c,0x461e0543)
eeObj.WriteMem32(0x005e5c14,0x3c013f1c)
eeObj.WriteMem32(0x005e5c20,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x004fbf5c)
eeObj.WriteMem32(0x004fdf90,0x14400007)
eeObj.WriteMem32(0x0060972c,0x14600009)
eeObj.WriteMem32(0x0060b164,0x14600009)
eeObj.WriteMem32(0x00619b50,0x1440000f)
eeObj.WriteMem32(0x004e2cbc,0x1440006e)


-- Kronos
eeObj.WriteMem32(0x0008caff,0x00520064)
eeObj.WriteMem32(0x005200b0,0x0803ff80)
eeObj.WriteMem32(0x005200b4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0814802d)
eeObj.WriteMem32(0x005200c4,0x14600007)
eeObj.WriteMem32(0x0050e600,0x461e0543)
eeObj.WriteMem32(0x005119a4,0x461e0543)
eeObj.WriteMem32(0x0060c5fc,0x3c013f1c)
eeObj.WriteMem32(0x0060c608,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x00520064)
eeObj.WriteMem32(0x00522098,0x14400007)
eeObj.WriteMem32(0x0063006c,0x14600009)
eeObj.WriteMem32(0x00631aa4,0x14600009)
eeObj.WriteMem32(0x00640490,0x1440000f)
eeObj.WriteMem32(0x00506d7c,0x1440006e)


-- Shaar
eeObj.WriteMem32(0x0008caff,0x004f391c)
eeObj.WriteMem32(0x004f3968,0x0803ff80)
eeObj.WriteMem32(0x004f396c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0813ce5b)
eeObj.WriteMem32(0x004f397c,0x14600007)
eeObj.WriteMem32(0x004e1eb8,0x461e0543)
eeObj.WriteMem32(0x004e525c,0x461e0543)
eeObj.WriteMem32(0x005de1ec,0x3c013f1c)
eeObj.WriteMem32(0x005de1f8,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x004f391c)
eeObj.WriteMem32(0x004f5950,0x14400007)
eeObj.WriteMem32(0x00601b9c,0x14600009)
eeObj.WriteMem32(0x006035d4,0x14600009)
eeObj.WriteMem32(0x00611fc0,0x1440000f)
eeObj.WriteMem32(0x004da67c,0x1440006e)


-- Orxon
eeObj.WriteMem32(0x0008caff,0x004fccdc)
eeObj.WriteMem32(0x004fcd28,0x0803ff80)
eeObj.WriteMem32(0x004fcd2c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0813f34b)
eeObj.WriteMem32(0x004fcd3c,0x14600007)
eeObj.WriteMem32(0x004eb278,0x461e0543)
eeObj.WriteMem32(0x004ee61c,0x461e0543)
eeObj.WriteMem32(0x005e8f14,0x3c013f1c)
eeObj.WriteMem32(0x005e8f20,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x004fccdc)
eeObj.WriteMem32(0x004fed10,0x14400007)
eeObj.WriteMem32(0x0060c944,0x14600009)
eeObj.WriteMem32(0x0060e37c,0x14600009)
eeObj.WriteMem32(0x0061cd68,0x1440000f)
eeObj.WriteMem32(0x004e3a3c,0x1440006e)


-- The Valix Belt
eeObj.WriteMem32(0x0008caff,0x004e4b5c)
eeObj.WriteMem32(0x004e4ba8,0x0803ff80)
eeObj.WriteMem32(0x004e4bac,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x081392eb)
eeObj.WriteMem32(0x004e4bbc,0x14600007)
eeObj.WriteMem32(0x004d30f8,0x461e0543)
eeObj.WriteMem32(0x004d649c,0x461e0543)
eeObj.WriteMem32(0x005d119c,0x3c013f1c)
eeObj.WriteMem32(0x005d11a8,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x004e4b5c)
eeObj.WriteMem32(0x004e6b90,0x14400007)
eeObj.WriteMem32(0x005f49f4,0x14600009)
eeObj.WriteMem32(0x005f642c,0x14600009)
eeObj.WriteMem32(0x00604e18,0x1440000f)
eeObj.WriteMem32(0x004cb8bc,0x1440006e)


-- Planet Torval
eeObj.WriteMem32(0x0008caff,0x00507c1c)
eeObj.WriteMem32(0x00507c68,0x0803ff80)
eeObj.WriteMem32(0x00507c6c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08141f1b)
eeObj.WriteMem32(0x00507c7c,0x14600007)
eeObj.WriteMem32(0x004f61b8,0x461e0543)
eeObj.WriteMem32(0x004f955c,0x461e0543)
eeObj.WriteMem32(0x005f384c,0x3c013f1c)
eeObj.WriteMem32(0x005f3858,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x00507c1c)
eeObj.WriteMem32(0x00509c50,0x14400007)
eeObj.WriteMem32(0x0061723c,0x14600009)
eeObj.WriteMem32(0x00618c74,0x14600009)
eeObj.WriteMem32(0x00627660,0x1440000f)
eeObj.WriteMem32(0x004ee97c,0x1440006e)


-- Stygia
eeObj.WriteMem32(0x0008caff,0x004f459c)
eeObj.WriteMem32(0x004f45e8,0x0803ff80)
eeObj.WriteMem32(0x004f45ec,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0813d17b)
eeObj.WriteMem32(0x004f45fc,0x14600007)
eeObj.WriteMem32(0x004e2b38,0x461e0543)
eeObj.WriteMem32(0x004e5edc,0x461e0543)
eeObj.WriteMem32(0x005e0674,0x3c013f1c)
eeObj.WriteMem32(0x005e0680,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x004f459c)
eeObj.WriteMem32(0x004f65d0,0x14400007)
eeObj.WriteMem32(0x00604064,0x14600009)
eeObj.WriteMem32(0x00605a9c,0x14600009)
eeObj.WriteMem32(0x00614488,0x1440000f)
eeObj.WriteMem32(0x004db2fc,0x1440006e)


-- Maraxus
eeObj.WriteMem32(0x0008caff,0x0050e4ac)
eeObj.WriteMem32(0x0050e4f8,0x0803ff80)
eeObj.WriteMem32(0x0050e4fc,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0814393f)
eeObj.WriteMem32(0x0050e50c,0x14600007)
eeObj.WriteMem32(0x004fc9f8,0x461e0543)
eeObj.WriteMem32(0x004ffd9c,0x461e0543)
eeObj.WriteMem32(0x005f9e94,0x3c013f1c)
eeObj.WriteMem32(0x005f9ea0,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x0050e4ac)
eeObj.WriteMem32(0x005104e0,0x14400007)
eeObj.WriteMem32(0x0061d92c,0x14600009)
eeObj.WriteMem32(0x0061f364,0x14600009)
eeObj.WriteMem32(0x0062dd50,0x1440000f)
eeObj.WriteMem32(0x004f51bc,0x1440006e)


-- Ghost Station
eeObj.WriteMem32(0x0008caff,0x00506ca4)
eeObj.WriteMem32(0x00506cf0,0x0803ff80)
eeObj.WriteMem32(0x00506cf4,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08141b3d)
eeObj.WriteMem32(0x00506d04,0x14600007)
eeObj.WriteMem32(0x004f5240,0x461e0543)
eeObj.WriteMem32(0x004f85e4,0x461e0543)
eeObj.WriteMem32(0x005f3b8c,0x3c013f1c)
eeObj.WriteMem32(0x005f3b98,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x00506ca4)
eeObj.WriteMem32(0x00508cd8,0x14400007)
eeObj.WriteMem32(0x0061757c,0x14600009)
eeObj.WriteMem32(0x00618fb4,0x14600009)
eeObj.WriteMem32(0x006279a0,0x1440000f)
eeObj.WriteMem32(0x004ed9bc,0x1440006e)


-- Battledome's Control Level
eeObj.WriteMem32(0x0008caff,0x00518de4)
eeObj.WriteMem32(0x00518e30,0x0803ff80)
eeObj.WriteMem32(0x00518e34,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x0814638d)
eeObj.WriteMem32(0x00518e44,0x14600007)
eeObj.WriteMem32(0x00507380,0x461e0543)
eeObj.WriteMem32(0x0050a724,0x461e0543)
eeObj.WriteMem32(0x0060430c,0x3c013f1c)
eeObj.WriteMem32(0x00604318,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x00518de4)
eeObj.WriteMem32(0x0051ae98,0x14400007)
eeObj.WriteMem32(0x00627cbc,0x14600009)
eeObj.WriteMem32(0x006296f4,0x14600009)
eeObj.WriteMem32(0x006380e0,0x1440000f)
eeObj.WriteMem32(0x004fdf3c,0x1440006e)


-- Multiplayer
eeObj.WriteMem32(0x0008caff,0x004c28bc)
eeObj.WriteMem32(0x004c2908,0x0803ff80)
eeObj.WriteMem32(0x004c290c,0x00000000)
eeObj.WriteMem32(0x000ffe58,0x08130a43)
eeObj.WriteMem32(0x004c291c,0x14600007)
eeObj.WriteMem32(0x004b07d8,0x461e0543)
eeObj.WriteMem32(0x004b3b7c,0x461e0543)
eeObj.WriteMem32(0x0059da24,0x3c013f1c)
eeObj.WriteMem32(0x0059da30,0xaea100b0)

eeObj.WriteMem32(0x0005caff,0x004c28bc)
eeObj.WriteMem32(0x004c48f0,0x14400007)
eeObj.WriteMem32(0x005c0c6c,0x14600009)
eeObj.WriteMem32(0x005c26a4,0x14600009)
eeObj.WriteMem32(0x005d1150,0x1440000f)
eeObj.WriteMem32(0x004a8ffc,0x1440006e)
end

emuObj.AddVsyncHook(widescreen)