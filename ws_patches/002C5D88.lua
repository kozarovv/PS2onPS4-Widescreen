apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--Search values are different than NTSC-U.

--Widescreen hack 16:9
eeObj.WriteMem32(0x001b8b1c,0x14400005)
eeObj.WriteMem32(0x001b8b34,0x8f849f54)
eeObj.WriteMem32(0x001b8b38,0x3c060048)
eeObj.WriteMem32(0x001b8b3c,0x0000282d)

eeObj.WriteMem32(0x001b8b40,0x24c67c3f)
eeObj.WriteMem32(0x001b8b44,0x0000382d)
eeObj.WriteMem32(0x001b8b48,0x24080001)
eeObj.WriteMem32(0x001b8b4c,0x0c05abc0)

eeObj.WriteMem32(0x001b8b50,0x0000482d)
eeObj.WriteMem32(0x001b8b54,0x0040882d)
eeObj.WriteMem32(0x001b8b58,0x0c059abc)
eeObj.WriteMem32(0x001b8b5c,0xafa0009c)

eeObj.WriteMem32(0x001b8b60,0x8fa6009c)
eeObj.WriteMem32(0x001b8b64,0x0220202d)
eeObj.WriteMem32(0x001b8b68,0x8f898034)
eeObj.WriteMem32(0x001b8b6c,0x0040282d)

eeObj.WriteMem32(0x001b8b70,0x0000382d)
eeObj.WriteMem32(0x001b8b74,0x0000402d)
eeObj.WriteMem32(0x001b8b78,0x0c05980c)
eeObj.WriteMem32(0x001b8b7c,0x0000502d)

eeObj.WriteMem32(0x001b8b80,0x0c06e4b8)
eeObj.WriteMem32(0x001b8b84,0x0040202d)
eeObj.WriteMem32(0x001b8b88,0xae020060)
eeObj.WriteMem32(0x001b8b8c,0x8e040060)

eeObj.WriteMem32(0x001b8b90,0x8c990000)
eeObj.WriteMem32(0x001b8b94,0x8f39006c)
eeObj.WriteMem32(0x001b8b98,0x0320f809)
eeObj.WriteMem32(0x001b8b9c,0x0200282d)

eeObj.WriteMem32(0x001b8ba0,0x8f829de0)
eeObj.WriteMem32(0x001b8ba4,0x14400005)
eeObj.WriteMem32(0x001b8ba8,0x3c040048)
eeObj.WriteMem32(0x001b8bac,0x0c071c00)

eeObj.WriteMem32(0x001b8bb0,0x24845080)
eeObj.WriteMem32(0x001b8bb4,0x0c071bb8)
eeObj.WriteMem32(0x001b8bb8,0xaf829de0)
eeObj.WriteMem32(0x001b8bbc,0x8f849de0)

eeObj.WriteMem32(0x001b8bc0,0x3c060048)
eeObj.WriteMem32(0x001b8bc4,0x0000282d)
eeObj.WriteMem32(0x001b8bc8,0x24c67c58)
eeObj.WriteMem32(0x001b8bcc,0x0000382d)

eeObj.WriteMem32(0x001b8bd0,0x24080001)
eeObj.WriteMem32(0x001b8bd4,0x0c05abc0)
eeObj.WriteMem32(0x001b8bd8,0x0000482d)
eeObj.WriteMem32(0x001b8bdc,0x0040882d)

eeObj.WriteMem32(0x001b8be0,0x0c059abc)
eeObj.WriteMem32(0x001b8be4,0xafa00098)
eeObj.WriteMem32(0x001b8be8,0x8fa60098)
eeObj.WriteMem32(0x001b8bec,0x0220202d)

eeObj.WriteMem32(0x001b8bf0,0x8f898034)
eeObj.WriteMem32(0x001b8bf4,0x0040282d)
eeObj.WriteMem32(0x001b8bf8,0x0000382d)
eeObj.WriteMem32(0x001b8bfc,0x0000402d)

eeObj.WriteMem32(0x001b8c00,0x0c05980c)
eeObj.WriteMem32(0x001b8c04,0x0000502d)
eeObj.WriteMem32(0x001b8c08,0x0c05ece4)
eeObj.WriteMem32(0x001b8c0c,0xae020064)

eeObj.WriteMem32(0x001b8c10,0xe6000074)
eeObj.WriteMem32(0x001b8c14,0x3c023fd4)
eeObj.WriteMem32(0x001b8c18,0xae0000c0)
eeObj.WriteMem32(0x001b8c1c,0x24040004)

eeObj.WriteMem32(0x001b8c20,0xae0000c4)
eeObj.WriteMem32(0x001b8c24,0x3c033f40)
eeObj.WriteMem32(0x001b8c28,0xae0000c8)
eeObj.WriteMem32(0x001b8c2c,0x34427ae1)

eeObj.WriteMem32(0x001b8c30,0xe61400cc)
eeObj.WriteMem32(0x001b8c34,0xae0000e0)
eeObj.WriteMem32(0x001b8c38,0xae0000e4)
eeObj.WriteMem32(0x001b8c3c,0xae0000e8)

eeObj.WriteMem32(0x001b8c40,0xe61400ec)
eeObj.WriteMem32(0x001b8c44,0xae0000f0)
eeObj.WriteMem32(0x001b8c48,0xae0000f4)
eeObj.WriteMem32(0x001b8c4c,0xae0000f8)

eeObj.WriteMem32(0x001b8c50,0xe61400fc)
eeObj.WriteMem32(0x001b8c54,0xae000100)
eeObj.WriteMem32(0x001b8c58,0xae000108)
eeObj.WriteMem32(0x001b8c5c,0xae000104)

eeObj.WriteMem32(0x001b8c60,0xae040094)
eeObj.WriteMem32(0x001b8c64,0xae000088)
eeObj.WriteMem32(0x001b8c68,0xae000084)
eeObj.WriteMem32(0x001b8c6c,0xae03008c)

eeObj.WriteMem32(0x001b8c70,0x3c033f80)
eeObj.WriteMem32(0x001b8c74,0xae030090)
end

emuObj.AddVsyncHook(widescreen)