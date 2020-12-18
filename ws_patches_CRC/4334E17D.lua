apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

eeObj.WriteMem32(0x00104dc4,0x3c013f40)
eeObj.WriteMem32(0x00104dc8,0x44810000)
eeObj.WriteMem32(0x00104dd0,0x4600c602)


--NEW (2D Characters in the field)
eeObj.WriteMem32(0x0027c9d4,0x3c013f40)
eeObj.WriteMem32(0x0027c9d8,0x4481f000)
eeObj.WriteMem32(0x0027ca14,0x46021002)
eeObj.WriteMem32(0x0027ca18,0x0200202d)
eeObj.WriteMem32(0x0027ca1c,0x27a50020)
eeObj.WriteMem32(0x0027ca20,0xe7a20024)
eeObj.WriteMem32(0x0027ca24,0x461e1082)

--OLD
--eeObj.WriteMem32(0x00279a10,0x3c033f40)
--eeObj.WriteMem32(0x00279a24,0x3c033f80)
--eeObj.WriteMem32(0x00279a28,0xac830010)
--eeObj.WriteMem32(0x00279a2c,0xac800014)
--eeObj.WriteMem32(0x00279a30,0xac800018)
--eeObj.WriteMem32(0x00279a34,0xac80001c)
--eeObj.WriteMem32(0x00279a38,0x03e00008)
--eeObj.WriteMem32(0x00279a3c,0xac830020)

--font fix
--803f023c 00608244 803f023c 00688244 1000a48f
eeObj.WriteMem32(0x0012ecc4,0x3c023f40)

eeObj.WriteMem32(0x001b5508,0x24070015)
eeObj.WriteMem32(0x00144210,0x24070015)
eeObj.WriteMem32(0x001b5534,0x24070015)
eeObj.WriteMem32(0x00206424,0x24070015)
--eeObj.WriteMem32(0x001D7C30,0x24080015)


--portrait fix
--21010924 2df02001
eeObj.WriteMem32(0x002050c8,0x240400d9)

--98000000 10010000
eeObj.WriteMem32(0x0028d7c0,0x000000b8)
eeObj.WriteMem32(0x0028d7c4,0x00000130)
eeObj.WriteMem32(0x0028d7c8,0x00000160)
eeObj.WriteMem32(0x0028d7cc,0x00000190)
eeObj.WriteMem32(0x0028d7d0,0x00000208)

eeObj.WriteMem32(0x00206274,0x24090042)
eeObj.WriteMem32(0x00206254,0x2674001e)

eeObj.WriteMem32(0x001dcadc,0x24090042)
eeObj.WriteMem32(0x001dcae0,0x240a002c)
eeObj.WriteMem32(0x001dcad0,0x26a60013)

eeObj.WriteMem32(0x001dd4c4,0x24090042)
eeObj.WriteMem32(0x001dd4c8,0x240a002c)
eeObj.WriteMem32(0x001dd4b8,0x26460013)

eeObj.WriteMem32(0x001deac0,0x24090042)
eeObj.WriteMem32(0x001deac4,0x240a002c)
eeObj.WriteMem32(0x001deab4,0x26260013)

eeObj.WriteMem32(0x001dc4d8,0x24090018)
eeObj.WriteMem32(0x001dc4d0,0x26860008)

----------------------------------------
--Narration subtitles
--eeObj.WriteMem32(0x0027ca58,0x3c023fab)
--eeObj.WriteMem32(0x0027ca5c,0x0c09f138)
--eeObj.WriteMem32(0x0027ca60,0xafa20020)
--eeObj.WriteMem32(0x0027ca64,0x1000fff3)
end

emuObj.AddVsyncHook(widescreen)