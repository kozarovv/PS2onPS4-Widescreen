apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kingdom Hearts 2 Final Mix + (NTSC-J) (SLPM 666 75)
--comment=Kingdom Hearts 2 Final Mix + (NTSC-J)
--comment=ENGLISH PATCH BY CRAZYCATZ00

-- old widescreen
--eeObj.WriteMem32(0x003A7BBC,0x3F19999A)
--eeObj.WriteMem32(0x0036A0B8,0x43C00000)
--eeObj.WriteMem32(0x0037153C,0x3F19999A)
--eeObj.WriteMem32(0x0036A0F0,0x3F19999A)
--eeObj.WriteMem32(0x003761BC,0x3F19999A)

-- new 16:9 hack by - ElHecht
eeObj.WriteMem32(0x00106e10,0x3c013f4c)
eeObj.WriteMem32(0x00106e28,0x3421cccc)
eeObj.WriteMem32(0x00106e2c,0x4481f800)
eeObj.WriteMem32(0x00106e30,0x461fa503)
eeObj.WriteMem32(0x00106e54,0x3c1b3f40)
eeObj.WriteMem32(0x00106e58,0x449bf000)
eeObj.WriteMem32(0x00106e70,0x461effc2)
eeObj.WriteMem32(0x00106e74,0xe61f004c)

--zoom for cutscenes (hides sudden pop-in)
eeObj.WriteMem32(0x0036a0bc,0x43f90000)

--disable depth of field (disables poor cutscene scaling)
eeObj.WriteMem32(0x00166db6,0x000000EF)

--font fix
eeObj.WriteMem32(0x0036CE94,0x3F400000)
eeObj.WriteMem32(0x0036CE98,0x3F400000)
eeObj.WriteMem32(0x0036CE9C,0x3F400000)

--black border fix
eeObj.WriteMem32(0x0014AD80,0x24050000)
eeObj.WriteMem32(0x0014ADA8,0x24050000)
eeObj.WriteMem32(0x0014ADD0,0x24050000)
eeObj.WriteMem32(0x0014AE00,0x24050000)

--lower subtitles
eeObj.WriteMem32(0x001ac8d8,0x240a0190)

--subtitles off
--eeObj.WriteMem32(0x0022d8d4,0x11e00019)

--Disable image map names
--eeObj.WriteMem32(0x00149B52,0x00000000)
--eeObj.WriteMem32(0x0036B3B0,0x00000000)

--60 FPS
--eeObj.WriteMem32(0x00349E1C,0x00000000)

--60 FPS toggle on (game play, cutscenes ect)
--eeObj.WriteMem32(0x0034dca8,0x00000003)
--eeObj.WriteMem32(0x00349E1C,0x00000000)
--eeObj.WriteMem32(0x00349E2c,0x00000000)

--60 FPS toggle off (FMV's)
--eeObj.WriteMem32(0x0034dca8,0x00000001)
--eeObj.WriteMem32(0x00349E1C,0x00000001)
--eeObj.WriteMem32(0x00349E2c,0x00000001)
end

emuObj.AddVsyncHook(widescreen)