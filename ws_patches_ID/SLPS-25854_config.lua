apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Poison Pink (J) (SLPS-25854)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000080bf d7a370bf (1st)
eeObj.WriteMem32(0x00482894,0xbf400000)

--Text Box Fix
--00009c43 0000803f 000040c2 00000c43 (1st)
eeObj.WriteMem32(0x0055278c,0x43c00000)

--0000b042 0080cf43 (1st)
eeObj.WriteMem32(0x00552768,0x42c00000)
eeObj.WriteMem32(0x0055276c,0x00000000)

--Message Indicator Position (Up)
--0000d143 0000803f 00000000
eeObj.WriteMem32(0x005526f4,0x43c80000)

--Font fix (conversation)
--0000803f 0000803f 0000803e 0000803f cccccc3d
eeObj.WriteMem32(0x00552700,0x3f600000)


--********  2D FIX PARTS  ********


--2D Characters (Town & Battle Field)
--43000f3c d80115e6 20008046
eeObj.WriteMem32(0x00132e00,0x0814f738)

eeObj.WriteMem32(0x0053dce0,0x3c0f0043)
eeObj.WriteMem32(0x0053dce4,0x3c013faa)
eeObj.WriteMem32(0x0053dce8,0x3421aaab)
eeObj.WriteMem32(0x0053dcec,0x4481f000)
eeObj.WriteMem32(0x0053dcf0,0xe61e01d8)
eeObj.WriteMem32(0x0053dcf4,0x0804cb82)


--Traviata House
--900014e6 940014e6 1400e58d
eeObj.WriteMem32(0x002d7aa0,0x0814f723)

eeObj.WriteMem32(0x0053dc8c,0x3c013f40)
eeObj.WriteMem32(0x0053dc90,0x4481f800)
eeObj.WriteMem32(0x0053dc94,0xe61f0090)
eeObj.WriteMem32(0x0053dc98,0x080b5ea9)


--The Uzaporium Shop
--900015e6 940015e6 1800a524 (2nd)
eeObj.WriteMem32(0x002aab74,0x0814f727)

eeObj.WriteMem32(0x0053dc9c,0x3c013f40)
eeObj.WriteMem32(0x0053dca0,0x4481f800)
eeObj.WriteMem32(0x0053dca4,0xe61f0090)
eeObj.WriteMem32(0x0053dca8,0x080aaade)


--Twilight's Rest (Potraits)
--940015e6 800000a2 0800b6e5 (1st)
eeObj.WriteMem32(0x002857b8,0x0814f72b)

eeObj.WriteMem32(0x0053dcaC,0x3c013f40)
eeObj.WriteMem32(0x0053dcB0,0x4481f000)
eeObj.WriteMem32(0x0053dcB4,0xe61e0094)
eeObj.WriteMem32(0x0053dcB8,0x080a15ef)


--2D Characters (Conversation and Twilight's Rest)
--c0ffbd27 1000b0ff 2000b2ff 2800b3ff 2d80a000
eeObj.WriteMem32(0x0023bc88,0x0814f733)

eeObj.WriteMem32(0x0053dccc,0xc4400008)
eeObj.WriteMem32(0x0053dcd0,0x3c013f40)
eeObj.WriteMem32(0x0053dcd4,0x4481f000)
eeObj.WriteMem32(0x0053dcd8,0x461e0002)
eeObj.WriteMem32(0x0053dcdc,0x0808ef23)



----------------------------------------------------------/
--Left Characters
--080000c6 080041c4 02000146
--eeObj.WriteMem32(0x0022217c,0x0814f72f)

--eeObj.WriteMem32(0x0053dcbc,0xc6000008)
--eeObj.WriteMem32(0x0053dcc0,0x3c01bf40)
--eeObj.WriteMem32(0x0053dcc4,0x4481f000)
--eeObj.WriteMem32(0x0053dcc8,0x461e0002)
--eeObj.WriteMem32(0x0053dccc,0x08088862)

--Letter Box 
--eeObj.WriteMem32(0x0062dea0,0x3F400000)


--2D Characters fix  (Cause a many others problem)
--eeObj.WriteMem32(0x001cc724,0x3c013f40)
--eeObj.WriteMem32(0x001cc728,0x4481f800)
--eeObj.WriteMem32(0x001cc72c,0x461fad42)
--eeObj.WriteMem32(0x001cc730,0x46150003)
--eeObj.WriteMem32(0x001cc734,0x00000000)
--eeObj.WriteMem32(0x001cc738,0xa6970006)


--Menu 2D Character (Y-Fov, X-Fov, and Color changed at the same time)
--eeObj.WriteMem32(0x005545d8,0x3F400000)

--0000430000430000803f0000803f

--eeObj.WriteMem32(0x005526d8,0x00000000)
--eeObj.WriteMem32(0x00556120,0x43a10000)

--Background Picture Zoom
--eeObj.WriteMem32(0x00550708,0x3faaaaab)

--xxx
--eeObj.WriteMem32(0x001cc6fc,0x44a00000)


--2D Characters(Battle Field) Y-Fov(+), X-Fov(+)
--0000803f 0000a041 0000803f
--eeObj.WriteMem32(0x0054e4e4,0x3faaaaab)

--2D Characters(Battle Field) X-Fov(-)
--000080bf cccc2c40
--eeObj.WriteMem32(0x00552824,0xbf400000)

--ALL 2D Grahpics
--eeObj.WriteMem32(0x00482de0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)