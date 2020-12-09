apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gameplay
eeObj.WriteMem32(0x0032652c,0x3f400000)

--Dither + Ghost post-process Effect Off
--eeObj.WriteMem32(0x00156cb4,0x00000000)
--Focus Effect Off
--eeObj.WriteMem32(0x00156cfc,0x00000000)
--Disable dark filter (cutscene)
--eeObj.WriteMem32(0x00156d2c,0x00000000)

--Disable all bloom (speedup, but makes the game seem dull)
--eeObj.WriteMem32(0x00156df4,0x00000000)

--Disable overbloom (cutscene)
--eeObj.WriteMem32(0x00156d90,0x00000000)
--Decrease overbloom (gameplay)
--eeObj.WriteMem32(0x0036B904,0x3F400000)

--Bloom offset (fixes bloom glitch)
--eeObj.WriteMem32(0x0036B910,0x43A30000)
--eeObj.WriteMem32(0x0036B914,0x43660000)

--FMV's fix
eeObj.WriteMem32(0x0036EA30,0x44200000)
eeObj.WriteMem32(0x0036EA38,0x3e333333)

eeObj.WriteMem32(0x00216ea0,0x0c09c1ac)
eeObj.WriteMem32(0x00216ea4,0xc5e10000)
eeObj.WriteMem32(0x00216ea8,0x8faf00b0)
eeObj.WriteMem32(0x00216eac,0x0200202d)
eeObj.WriteMem32(0x00216eb0,0x8fae00b4)
eeObj.WriteMem32(0x00216eb4,0x448f0000)
eeObj.WriteMem32(0x00216eb8,0x46800020)
eeObj.WriteMem32(0x00216ebc,0x25effffe)
eeObj.WriteMem32(0x00216ec0,0x46010042)
eeObj.WriteMem32(0x00216ec4,0xe7a10044)
eeObj.WriteMem32(0x00216ec8,0xafaf002c)
eeObj.WriteMem32(0x00216ecc,0xafae0030)
eeObj.WriteMem32(0x00216ed0,0x3c013f40)
eeObj.WriteMem32(0x00216ed4,0x44810800)
eeObj.WriteMem32(0x00216ed8,0x4601b582)
eeObj.WriteMem32(0x00216edc,0x4600b583)
eeObj.WriteMem32(0x00216ee0,0x448e0800)
eeObj.WriteMem32(0x00216ee4,0x46800860)

--Lens Flare's fix
eeObj.WriteMem32(0x0016c60c,0x0c060269)
eeObj.WriteMem32(0x0016c50c,0x0c060269)
eeObj.WriteMem32(0x0016c56c,0x0c060269)
eeObj.WriteMem32(0x0016c5b0,0x0c060269)

eeObj.WriteMem32(0x001809a4,0x3c013f40)
eeObj.WriteMem32(0x001809a8,0x44810800)
eeObj.WriteMem32(0x001809ac,0x46016302)
eeObj.WriteMem32(0x001809b0,0x27bdff90)
eeObj.WriteMem32(0x001809b4,0xffb00020)
eeObj.WriteMem32(0x001809b8,0xffb10028)
eeObj.WriteMem32(0x001809bc,0x0000182d)
eeObj.WriteMem32(0x001809c0,0xffb20030)
eeObj.WriteMem32(0x001809c4,0x313000ff)
eeObj.WriteMem32(0x001809c8,0xffb30038)
eeObj.WriteMem32(0x001809cc,0x311100ff)
eeObj.WriteMem32(0x001809d0,0xffb50048)
eeObj.WriteMem32(0x001809d4,0x00a0902d)
eeObj.WriteMem32(0x001809d8,0xffb60050)
eeObj.WriteMem32(0x001809dc,0x30f300ff)
eeObj.WriteMem32(0x001809e0,0xffb70058)
eeObj.WriteMem32(0x001809e4,0x315500ff)
eeObj.WriteMem32(0x001809e8,0xffb40040)
eeObj.WriteMem32(0x001809ec,0xffbf0060)
eeObj.WriteMem32(0x001809f0,0xe7b40068)
eeObj.WriteMem32(0x001809f4,0xc4a10000)
eeObj.WriteMem32(0x001809f8,0xc4a20004)
eeObj.WriteMem32(0x001809fc,0x460c0900)
eeObj.WriteMem32(0x00180a00,0x460d10c0)
eeObj.WriteMem32(0x00180a04,0x3c014180)
eeObj.WriteMem32(0x00180a08,0x44810000)
eeObj.WriteMem32(0x00180a0c,0x460c0841)
eeObj.WriteMem32(0x00180a10,0x3c0f002f)
eeObj.WriteMem32(0x00180a14,0x460d1081)
eeObj.WriteMem32(0x00180a18,0x8dee472c)
eeObj.WriteMem32(0x00180a1c,0x460018c2)
eeObj.WriteMem32(0x00180a20,0x46002102)
eeObj.WriteMem32(0x00180a24,0x008e2021)
eeObj.WriteMem32(0x00180a28,0x46000842)
eeObj.WriteMem32(0x00180a2c,0x3c0f0035)
eeObj.WriteMem32(0x00180a30,0x46001082)
eeObj.WriteMem32(0x00180a34,0x25eff510)
eeObj.WriteMem32(0x00180a38,0x00042140)
eeObj.WriteMem32(0x00180a3c,0x008f2021)
eeObj.WriteMem32(0x00180a40,0x9486000e)
eeObj.WriteMem32(0x00180a44,0x46002024)
eeObj.WriteMem32(0x00180a48,0x948b000c)
eeObj.WriteMem32(0x00180a4c,0x0006b900)
eeObj.WriteMem32(0x00180a50,0x000bb100)
eeObj.WriteMem32(0x00180a54,0x440d0000)
eeObj.WriteMem32(0x00180a58,0x46001824)
eeObj.WriteMem32(0x00180a5c,0xafad0004)
eeObj.WriteMem32(0x00180a60,0xafad000c)
eeObj.WriteMem32(0x00180a64,0x340d8000)
eeObj.WriteMem32(0x00180a68,0x440c0000)
eeObj.WriteMem32(0x00180a6c,0x46000824)
eeObj.WriteMem32(0x00180a70,0xafac0018)
eeObj.WriteMem32(0x00180a74,0xafac001c)
eeObj.WriteMem32(0x00180a78,0x46001064)
eeObj.WriteMem32(0x00180a7c,0x440f0000)
eeObj.WriteMem32(0x00180a80,0xafaf0000)
eeObj.WriteMem32(0x00180a84,0x440e0800)
eeObj.WriteMem32(0x00180a88,0xafaf0008)
eeObj.WriteMem32(0x00180a8c,0xafae0010)
eeObj.WriteMem32(0x00180a90,0xafae0014)
eeObj.WriteMem32(0x00180a94,0xdc940000)
eeObj.WriteMem32(0x00180a98,0x03a0702d)
eeObj.WriteMem32(0x00180a9c,0x8dcf0000)
eeObj.WriteMem32(0x00180aa0,0x25efc000)
eeObj.WriteMem32(0x00180aa4,0x01af782b)
eeObj.WriteMem32(0x00180aa8,0x55e00069)
eeObj.WriteMem32(0x00180aac,0xdfb00020)
eeObj.WriteMem32(0x00180ab0,0x8dcf0010)
eeObj.WriteMem32(0x00180ab4,0x25efc000)
eeObj.WriteMem32(0x00180ab8,0x01af782b)
eeObj.WriteMem32(0x00180abc,0x15e00063)
eeObj.WriteMem32(0x00180ac0,0x25ce0004)
eeObj.WriteMem32(0x00180ac4,0x24630001)
eeObj.WriteMem32(0x00180ac8,0x286f0004)
eeObj.WriteMem32(0x00180acc,0x55e0fff4)
eeObj.WriteMem32(0x00180ad0,0x8dcf0000)
eeObj.WriteMem32(0x00180ad4,0xc6400008)
eeObj.WriteMem32(0x00180ad8,0x3c0e0fff)
eeObj.WriteMem32(0x00180adc,0x3c014180)
eeObj.WriteMem32(0x00180ae0,0x4481a000)
end

emuObj.AddVsyncHook(widescreen)