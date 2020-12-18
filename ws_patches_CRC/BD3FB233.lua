apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kingdom Hearts: Final Mix (English patch)
--comment=Widescreen patch
eeObj.WriteMem32(0x00110644,0x3c0143d6)
eeObj.WriteMem32(0x00110b30,0x3c013f19)
eeObj.WriteMem32(0x00110898,0x3421999a)

--FMV's fix
eeObj.WriteMem32(0x002a6948,0x70007000)
eeObj.WriteMem32(0x0010631c,0x3c071900)

--black border fix
eeObj.WriteMem32(0x00104334,0x00000000)
eeObj.WriteMem32(0x00104454,0x00000000)

--Hide subtitles
--eeObj.WriteMem32(0x0010d518,0x24030000)

-- matrix (affects menu characters, textboxes, world map, gummi ship)
eeObj.WriteMem32(0x00267b6c,0x3c013f40)
eeObj.WriteMem32(0x00267b70,0x44810000)
eeObj.WriteMem32(0x00267b78,0x4600c602)

-- textboxes
eeObj.WriteMem32(0x004951D0,0x3FAAAAAB)
--eeObj.WriteMem32(0x004951E4,0x3FAAAAAB)

--position fix weapon select
eeObj.WriteMem32(0x0020a170,0x3c0144fa)

--HP/MP fix for PCSX2
eeObj.WriteMem32(0x0044d894,0x00000003)
eeObj.WriteMem32(0x0044d890,0x00000006)
eeObj.WriteMem32(0x0044d888,0x000001A9)
eeObj.WriteMem32(0x0044d7d4,0x00000006)
eeObj.WriteMem32(0x0044d7d0,0x00000004)
eeObj.WriteMem32(0x0044d7cc,0x0000000c)
eeObj.WriteMem32(0x0044d590,0x00000011)
eeObj.WriteMem32(0x0044d4d0,0x00000012)
eeObj.WriteMem32(0x0044c490,0x00000004)
eeObj.WriteMem32(0x0044ced0,0x00000004)
eeObj.WriteMem32(0x0044cc90,0x00000013)
eeObj.WriteMem32(0x0044cc88,0x0000017e)
eeObj.WriteMem32(0x0044cd50,0x00000012)
eeObj.WriteMem32(0x0044cbd0,0x00000012)
eeObj.WriteMem32(0x0044ac20,0x00000021)
eeObj.WriteMem32(0x0044c420,0x00000003)
eeObj.WriteMem32(0x0044c41c,0x00000105)
eeObj.WriteMem32(0x0044c418,0x000001bb)
eeObj.WriteMem32(0x0044c4e4,0x00000003)
eeObj.WriteMem32(0x0044c4dc,0x0000013b)
eeObj.WriteMem32(0x0044c4d8,0x000001e5)
eeObj.WriteMem32(0x0044c4e4,0x00000003)
eeObj.WriteMem32(0x0044c4dc,0x0000013b)
eeObj.WriteMem32(0x0044ae58,0x0000018a)
eeObj.WriteMem32(0x0044af20,0x00000020)
eeObj.WriteMem32(0x0044c060,0x00000019)
eeObj.WriteMem32(0x0044b460,0x0000001b)
eeObj.WriteMem32(0x0044b5e0,0x0000001b)
eeObj.WriteMem32(0x0044b520,0x0000001b)
eeObj.WriteMem32(0x0044bfa0,0x0000001b)
eeObj.WriteMem32(0x0044b760,0x00000005)
eeObj.WriteMem32(0x0044b820,0x00000005)

--60fps toggle on (game play)
--60fps normal mode
--eeObj.WriteMem32(0x002c5958,0x00000000)
--eeObj.WriteMem32(0x002bbe0c,0x00000000)

--60fps normal mode alt
--eeObj.WriteMem32(0x002c5958,0x00001000)
--eeObj.WriteMem32(0x002BBE0C,0x00000000)

--60fps normal mode alt (big ben)
--eeObj.WriteMem32(0x002c5958,0x00000020)
--eeObj.WriteMem32(0x002BBE0C,0x00000000)

--60fps battle mode
--eeObj.WriteMem32(0x002c5958,0x00000001)
--eeObj.WriteMem32(0x002BBE0C,0x00000000)

--60fps battle mode (boss)
--eeObj.WriteMem32(0x002c5958,0x00000011)
--eeObj.WriteMem32(0x002BBE0C,0x00000000)

--60fps battle mode (boss) alt
--eeObj.WriteMem32(0x002c5958,0x00000031)
--eeObj.WriteMem32(0x002BBE0C,0x00000000)

--60fps toggle off (cutscenes, fmv and other scripted events)
--60fpsoff fmv
--eeObj.WriteMem32(0x002c5958,0x00000040)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff fmv alt
--eeObj.WriteMem32(0x002c5958,0x0000004E)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff no hud (world map)
--eeObj.WriteMem32(0x002c5958,0x00000004)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff no hud (tutorial, gummi ship)
--eeObj.WriteMem32(0x002c5958,0x0000000C)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff ingame cutscene
--eeObj.WriteMem32(0x002c5958,0x0000000E)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff ingame cutscene alt
--eeObj.WriteMem32(0x002c5958,0x0000002E)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff ingame cutscene alt (white trinity)
--eeObj.WriteMem32(0x002c5958,0x0000100E)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff ingame cutscene alt
--eeObj.WriteMem32(0x002c5958,0x0000000F)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff ingame cutscene (boss)
--eeObj.WriteMem32(0x002c5958,0x0000001F)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff ingame cutscene (boss) alt
--eeObj.WriteMem32(0x002c5958,0x0000003F)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)

--60fpsoff ingame cutscene (red trinity)
--eeObj.WriteMem32(0x002c5958,0x0000100C)
--eeObj.WriteMem32(0x002BBE0C,0x00000001)
end

emuObj.AddVsyncHook(widescreen)