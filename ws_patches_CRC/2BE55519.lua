apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000080bf d7a370bf (1st)
eeObj.WriteMem32(0x00487114,0xbf400000)

--Text Box Fix
--00009c43 0000803f 000040c2 00000c43 (1st)
eeObj.WriteMem32(0x00557404,0x43c00000)

--0000b042 0080cf43 (1st)
eeObj.WriteMem32(0x005573e0,0x42c00000)
eeObj.WriteMem32(0x005573e4,0x00000000)

--Message Indicator Position (Up)
--0000d143 0000803f 00000000
eeObj.WriteMem32(0x0055736c,0x43c80000)

--Font fix (Conversation)
--0000803f 0000803f 0000803e 0000803f cccccc3d
eeObj.WriteMem32(0x00557378,0x3f400000)


--********  2D FIX PARTS  ********

--2D Characters (Town & Battle Field)
--43000f3c d80115e6 20008046
eeObj.WriteMem32(0x00132e20,0x0810b346)

eeObj.WriteMem32(0x0042cd18,0x3c0f0043)
eeObj.WriteMem32(0x0042cd1c,0x3c013faa)
eeObj.WriteMem32(0x0042cd20,0x3421aaab)
eeObj.WriteMem32(0x0042cd24,0x4481f000)
eeObj.WriteMem32(0x0042cd28,0xe61e01d8)
eeObj.WriteMem32(0x0042cd2c,0x0804cb8a)


--Traviata House
--900014e6 940014e6 1400e58d
eeObj.WriteMem32(0x002d9360,0x0810b334)

eeObj.WriteMem32(0x0042ccd0,0x3c013f40)
eeObj.WriteMem32(0x0042ccd4,0x4481f800)
eeObj.WriteMem32(0x0042ccd8,0xe61f0090)
eeObj.WriteMem32(0x0042ccdc,0x080b64d9)


--The Uzaporium Shop
--900015e6 940015e6 1800a524 (2nd)
eeObj.WriteMem32(0x002ac0ac,0x0810b338)

eeObj.WriteMem32(0x0042cce0,0x3c013f40)
eeObj.WriteMem32(0x0042cce4,0x4481f800)
eeObj.WriteMem32(0x0042cce8,0xe61f0090)
eeObj.WriteMem32(0x0042ccec,0x080ab02c)


--Twilight's Rest (Potraits)
--940015e6 800000a2 0800b6e5 (1st)
eeObj.WriteMem32(0x00286be0,0x0810b33c)

eeObj.WriteMem32(0x0042ccf0,0x3c013f40)
eeObj.WriteMem32(0x0042ccf4,0x4481f000)
eeObj.WriteMem32(0x0042ccf8,0xe61e0094)
eeObj.WriteMem32(0x0042ccfc,0x080a1af9)


--2D Characters (Conversation and Twilight's Rest)
--c0ffbd27 1000b0ff 2000b2ff 2800b3ff 2d80a000
eeObj.WriteMem32(0x0023cdd8,0x0810b341)

eeObj.WriteMem32(0x0042cd04,0xc4400008)
eeObj.WriteMem32(0x0042cd08,0x3c013f40)
eeObj.WriteMem32(0x0042cd0c,0x4481f000)
eeObj.WriteMem32(0x0042cd10,0x461e0002)
eeObj.WriteMem32(0x0042cd14,0x0808f377)


--------------------------------------------------------
--Left Characters
--080000c6 080041c4 02000146
--eeObj.WriteMem32(0x002224f4,0x0810b340)

--eeObj.WriteMem32(0x0042cd00,0xc6000008)
--eeObj.WriteMem32(0x0042cd04,0x3c013f40)
--eeObj.WriteMem32(0x0042cd08,0x4481f000)
--eeObj.WriteMem32(0x0042cd0c,0x461e0002)
--eeObj.WriteMem32(0x0042cd10,0x0808893e)
end

emuObj.AddVsyncHook(widescreen)