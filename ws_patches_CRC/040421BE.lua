apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--Search values are different than NTSC-U.

--Widescreen hack 16:9
eeObj.WriteMem32(0x001d0b14,0x8f828ff8)
eeObj.WriteMem32(0x001d0b18,0x14400005)
eeObj.WriteMem32(0x001d0b1c,0x3c040046)
eeObj.WriteMem32(0x001d0b20,0x0c077c48)

eeObj.WriteMem32(0x001d0b24,0x248482d2)
eeObj.WriteMem32(0x001d0b28,0x0c077c00)
eeObj.WriteMem32(0x001d0b2c,0xaf828ff8)
eeObj.WriteMem32(0x001d0b30,0x8f848ff8)

eeObj.WriteMem32(0x001d0b34,0x3c060046)
eeObj.WriteMem32(0x001d0b38,0x0000282d)
eeObj.WriteMem32(0x001d0b3c,0x24c682f2)
eeObj.WriteMem32(0x001d0b40,0x0000382d)

eeObj.WriteMem32(0x001d0b44,0x24080001)
eeObj.WriteMem32(0x001d0b48,0x0c05a724)
eeObj.WriteMem32(0x001d0b4c,0x0000482d)
eeObj.WriteMem32(0x001d0b50,0x0040802d)

eeObj.WriteMem32(0x001d0b54,0x0c05983c)
eeObj.WriteMem32(0x001d0b58,0xafa00088)
eeObj.WriteMem32(0x001d0b5c,0x8fa60088)
eeObj.WriteMem32(0x001d0b60,0x0200202d)

eeObj.WriteMem32(0x001d0b64,0x8f898020)
eeObj.WriteMem32(0x001d0b68,0x0040282d)
eeObj.WriteMem32(0x001d0b6c,0x0000382d)
eeObj.WriteMem32(0x001d0b70,0x0000402d)

eeObj.WriteMem32(0x001d0b74,0x0c05956c)
eeObj.WriteMem32(0x001d0b78,0x0000502d)
eeObj.WriteMem32(0x001d0b7c,0x8fa3005c)
eeObj.WriteMem32(0x001d0b80,0x0c05edd4)

eeObj.WriteMem32(0x001d0b84,0xac620060)
eeObj.WriteMem32(0x001d0b88,0x8fa6005c)
eeObj.WriteMem32(0x001d0b8c,0x3c023fd4)
eeObj.WriteMem32(0x001d0b90,0x34437ae1)

eeObj.WriteMem32(0x001d0b94,0x24050004)
eeObj.WriteMem32(0x001d0b98,0x3c043f40)
eeObj.WriteMem32(0x001d0b9c,0xe4c00070)
eeObj.WriteMem32(0x001d0ba0,0x8fa2005c)

eeObj.WriteMem32(0x001d0ba4,0xac4000c0)
eeObj.WriteMem32(0x001d0ba8,0x8fa2005c)
eeObj.WriteMem32(0x001d0bac,0xac4000c4)
eeObj.WriteMem32(0x001d0bb0,0x8fa2005c)

eeObj.WriteMem32(0x001d0bb4,0xac4000c8)
eeObj.WriteMem32(0x001d0bb8,0x8fa2005c)
eeObj.WriteMem32(0x001d0bbc,0xe45400cc)
eeObj.WriteMem32(0x001d0bc0,0x8fa2005c)

eeObj.WriteMem32(0x001d0bc4,0xac4000e0)
eeObj.WriteMem32(0x001d0bc8,0x8fa2005c)
eeObj.WriteMem32(0x001d0bcc,0xac4000e4)
eeObj.WriteMem32(0x001d0bd0,0x8fa2005c)

eeObj.WriteMem32(0x001d0bd4,0xac4000e8)
eeObj.WriteMem32(0x001d0bd8,0x8fa2005c)
eeObj.WriteMem32(0x001d0bdc,0xe45400ec)
eeObj.WriteMem32(0x001d0be0,0x8fa2005c)

eeObj.WriteMem32(0x001d0be4,0xac4000f0)
eeObj.WriteMem32(0x001d0be8,0x8fa2005c)
eeObj.WriteMem32(0x001d0bec,0xac4000f4)
eeObj.WriteMem32(0x001d0bf0,0x8fa2005c)

eeObj.WriteMem32(0x001d0bf4,0xac4000f8)
eeObj.WriteMem32(0x001d0bf8,0x8fa2005c)
eeObj.WriteMem32(0x001d0bfc,0xe45400fc)
eeObj.WriteMem32(0x001d0c00,0x8fa2005c)

eeObj.WriteMem32(0x001d0c04,0xac400100)
eeObj.WriteMem32(0x001d0c08,0x8fa2005c)
eeObj.WriteMem32(0x001d0c0c,0xac400108)
eeObj.WriteMem32(0x001d0c10,0x8fa2005c)

eeObj.WriteMem32(0x001d0c14,0xac400104)
eeObj.WriteMem32(0x001d0c18,0x8fa2005c)
eeObj.WriteMem32(0x001d0c1c,0xac450090)
eeObj.WriteMem32(0x001d0c20,0x8fa2005c)

eeObj.WriteMem32(0x001d0c24,0xac400084)
eeObj.WriteMem32(0x001d0c28,0x8fa2005c)
eeObj.WriteMem32(0x001d0c2c,0xac400080)
eeObj.WriteMem32(0x001d0c30,0x8fa2005c)

eeObj.WriteMem32(0x001d0c34,0xac440088)
eeObj.WriteMem32(0x001d0c38,0x8fa2005c)
eeObj.WriteMem32(0x001d0c3c,0x3c043f80)
eeObj.WriteMem32(0x001d0c40,0xac44008c)
end

emuObj.AddVsyncHook(widescreen)