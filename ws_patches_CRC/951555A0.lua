apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disgaea 2: Cursed Memories (SLUS-21397)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x00104a5c,0x3c013f40)
eeObj.WriteMem32(0x00104a60,0x44810000)
eeObj.WriteMem32(0x00104a68,0x4600c602)

--NEW
eeObj.WriteMem32(0x0027d32c,0x46000883)
eeObj.WriteMem32(0x0027d330,0x1040000e)
eeObj.WriteMem32(0x0027d334,0x00000000)
eeObj.WriteMem32(0x0027d338,0xc6010050)
eeObj.WriteMem32(0x0027d33c,0x0200202d)
eeObj.WriteMem32(0x0027d340,0x46021002)
eeObj.WriteMem32(0x0027d344,0x27a50020)
eeObj.WriteMem32(0x0027d348,0x46011042)
eeObj.WriteMem32(0x0027d34c,0xe7a10020)
eeObj.WriteMem32(0x0027d350,0xc6010064)
eeObj.WriteMem32(0x0027d354,0x46011042)
eeObj.WriteMem32(0x0027d358,0xe7a00028)
eeObj.WriteMem32(0x0027d35c,0x0c09f138)
eeObj.WriteMem32(0x0027d360,0xe7a10024)
eeObj.WriteMem32(0x0027d364,0x1000000B)
eeObj.WriteMem32(0x0027d368,0x00000000)
eeObj.WriteMem32(0x0027d36c,0x46021002)
eeObj.WriteMem32(0x0027d370,0x0200202d)
eeObj.WriteMem32(0x0027d374,0x27a50020)
eeObj.WriteMem32(0x0027d378,0xe7a20024)
eeObj.WriteMem32(0x0027d37c,0x3c013f40)
eeObj.WriteMem32(0x0027d380,0x4481f000)
eeObj.WriteMem32(0x0027d384,0x461e1082)
eeObj.WriteMem32(0x0027d388,0xe7a20020)


--OLD
--eeObj.WriteMem32(0x0027a370,0x3c033f40)
--eeObj.WriteMem32(0x0027a384,0x3c033f80)
--eeObj.WriteMem32(0x0027a388,0xac830010)
--eeObj.WriteMem32(0x0027a38c,0xac800014)
--eeObj.WriteMem32(0x0027a390,0xac800018)
--eeObj.WriteMem32(0x0027a394,0xac80001c)
--eeObj.WriteMem32(0x0027a398,0x03e00008)
--eeObj.WriteMem32(0x0027a39c,0xac830020)
--eeObj.WriteMem32(0x0027d3b8,0x3c023fab)
--eeObj.WriteMem32(0x0027d3bc,0x0c09f138)
--eeObj.WriteMem32(0x0027d3c0,0xafa20020)
--eeObj.WriteMem32(0x0027d3c4,0x1000fff3)


--font fix
eeObj.WriteMem32(0x0012E444,0x3c023f40)

eeObj.WriteMem32(0x001B5608,0x24070015)
eeObj.WriteMem32(0x00144f38,0x24070015)
eeObj.WriteMem32(0x001b5634,0x24070015)
eeObj.WriteMem32(0x00205FA8,0x24170015)
eeObj.WriteMem32(0x001D7C30,0x24080015)


--portrait fix
eeObj.WriteMem32(0x00204C48,0x240900d9)
eeObj.WriteMem32(0x0028D180,0x000000b8)
eeObj.WriteMem32(0x0028D184,0x00000130)
eeObj.WriteMem32(0x0028D188,0x00000160)
eeObj.WriteMem32(0x0028D18c,0x00000190)
eeObj.WriteMem32(0x0028D190,0x00000208)

eeObj.WriteMem32(0x00205E00,0x24090042)
eeObj.WriteMem32(0x00205DE0,0x2666001E)

eeObj.WriteMem32(0x001dbe68,0x24090042)
eeObj.WriteMem32(0x001dbe6c,0x240a002c)
eeObj.WriteMem32(0x001DBE5C,0x26a60013)

eeObj.WriteMem32(0x001dc668,0x24090042)
eeObj.WriteMem32(0x001dc66c,0x240a002c)
eeObj.WriteMem32(0x001dc65c,0x26460013)

eeObj.WriteMem32(0x001ddb34,0x24090042)
eeObj.WriteMem32(0x001ddb38,0x240a002c)
eeObj.WriteMem32(0x001ddb28,0x26260013)

eeObj.WriteMem32(0x001DB9D8,0x24090018)
eeObj.WriteMem32(0x001db9d0,0x26860008)
end

emuObj.AddVsyncHook(widescreen)