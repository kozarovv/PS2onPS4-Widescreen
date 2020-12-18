apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen patch by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x001103ac,0x3c0143d6)
eeObj.WriteMem32(0x00110898,0x3c013f19)
eeObj.WriteMem32(0x0011089c,0x3421999a)

--FMV's fix
eeObj.WriteMem32(0x002a0d88,0x70007000)
eeObj.WriteMem32(0x001061f4,0x3c071900)

--black border fix
eeObj.WriteMem32(0x00104264,0x00000000)
eeObj.WriteMem32(0x00104384,0x00000000)

-- matrix (affects menu characters, textboxes, world map, gummi ship)
eeObj.WriteMem32(0x0026202c,0x3c013f40)
eeObj.WriteMem32(0x00262030,0x44810000)
eeObj.WriteMem32(0x00262038,0x4600c602)

-- textboxes
eeObj.WriteMem32(0x0048E550,0x3FAAAAAB)
--eeObj.WriteMem32(0x0048E564,0x3FAAAAAB)

--position fix weapon select
eeObj.WriteMem32(0x00207498,0x3c0144fa)

--font fix subtitle and text box (has bad alignment)
--eeObj.WriteMem32(0x0010c8d8,0x24426fb0)
--eeObj.WriteMem32(0x0010d2ac,0x3c013f1f)
--eeObj.WriteMem32(0x0010d2b0,0x3421fffc)
--eeObj.WriteMem32(0x0010d2d0,0x3c013f40)
--eeObj.WriteMem32(0x0010d6c0,0x3c014216)

--font fix hud and menu
eeObj.WriteMem32(0x001ee910,0x24070020)
eeObj.WriteMem32(0x001f76d0,0x24090020)

--numbers fix
eeObj.WriteMem32(0x001f938c,0x240b0020)
eeObj.WriteMem32(0x001f9110,0x24030020)

--zoom out camera slightly for wider fov
--eeObj.WriteMem32(0x0035CA68,0x00000000)

--hide subs
--eeObj.WriteMem32(0x0010d2c0,0x24030000)

--60fps toggle on (game play)
--60fps normal mode
--eeObj.WriteMem32(0x002BFD98,0x00000000)
--eeObj.WriteMem32(0x002B624C,0x00000000)

--60fps normal mode alt
--eeObj.WriteMem32(0x002BFD98,0x00001000)
--eeObj.WriteMem32(0x002B624C,0x00000000)

--60fps normal mode alt (big ben)
--eeObj.WriteMem32(0x002BFD98,0x00000020)
--eeObj.WriteMem32(0x002B624C,0x00000000)

--60fps battle mode
--eeObj.WriteMem32(0x002BFD98,0x00000001)
--eeObj.WriteMem32(0x002B624C,0x00000000)

--60fps battle mode (boss)
--eeObj.WriteMem32(0x002BFD98,0x00000011)
--eeObj.WriteMem32(0x002B624C,0x00000000)

--60fps battle mode (boss) alt
--eeObj.WriteMem32(0x002BFD98,0x00000031)
--eeObj.WriteMem32(0x002B624C,0x00000000)

--60fps toggle off (cutscenes, fmv and other scripted events)
--60fpsoff fmv
--eeObj.WriteMem32(0x002BFD98,0x00000040)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff fmv alt
--eeObj.WriteMem32(0x002BFD98,0x0000004E)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff no hud (world map)
--eeObj.WriteMem32(0x002BFD98,0x00000004)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff no hud (tutorial, gummi ship)
--eeObj.WriteMem32(0x002BFD98,0x0000000C)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff ingame cutscene
--eeObj.WriteMem32(0x002BFD98,0x0000000E)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff ingame cutscene alt
--eeObj.WriteMem32(0x002BFD98,0x0000002E)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff ingame cutscene alt (white trinity)
--eeObj.WriteMem32(0x002BFD98,0x0000100E)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff ingame cutscene alt
--eeObj.WriteMem32(0x002BFD98,0x0000000F)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff ingame cutscene (boss)
--eeObj.WriteMem32(0x002BFD98,0x0000001F)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff ingame cutscene (boss) alt
--eeObj.WriteMem32(0x002BFD98,0x0000003F)
--eeObj.WriteMem32(0x002B624C,0x00000001)

--60fpsoff ingame cutscene (red trinity)
--eeObj.WriteMem32(0x002BFD98,0x0000100C)
--eeObj.WriteMem32(0x002B624C,0x00000001)
end

emuObj.AddVsyncHook(widescreen)