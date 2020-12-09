apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kingdom Hearts II (PAL-G) (SLES-54233)
--gametitle=Kingdom Hearts II (PAL-E) (SLES-54114)
--comment=Widescreen hack by ElHecht

--16:9
eeObj.WriteMem32(0x00106d30,0x3c013f4c)
eeObj.WriteMem32(0x00106d48,0x3421cccc)
eeObj.WriteMem32(0x00106d4c,0x4481f800)
eeObj.WriteMem32(0x00106d50,0x461fa503)
eeObj.WriteMem32(0x00106d74,0x3c1b3f40)
eeObj.WriteMem32(0x00106d80,0x449bf000)
eeObj.WriteMem32(0x00106d90,0x461effc2)
eeObj.WriteMem32(0x00106d94,0xe61f004c)

--zoom for cutscenes (hides sudden pop-in)
eeObj.WriteMem32(0x00378574,0x43f90000)

--font fix
eeObj.WriteMem32(0x0037b2c4,0x3f400000)
eeObj.WriteMem32(0x0037b2c8,0x3f400000)
eeObj.WriteMem32(0x0037b2cc,0x3f400000)

--16:10
--eeObj.WriteMem32(0x00106d30,0x3c013f4c)
--eeObj.WriteMem32(0x00106d48,0x3421cccc)
--eeObj.WriteMem32(0x00106d4c,0x4481f800)
--eeObj.WriteMem32(0x00106d50,0x461fa503)
--eeObj.WriteMem32(0x00106d74,0x3c1b3f55)
--eeObj.WriteMem32(0x00106d78,0x377b5555)
--eeObj.WriteMem32(0x00106d80,0x449bf000)
--eeObj.WriteMem32(0x00106d90,0x461effc2)
--eeObj.WriteMem32(0x00106d94,0xe61f004c)
--eeObj.WriteMem32(0x0037b2c4,0x3f555555)
--eeObj.WriteMem32(0x0037b2c8,0x3f555555)
--eeObj.WriteMem32(0x0037b2cc,0x3f555555)

--black border fix
eeObj.WriteMem32(0x0014aac8,0x24050000)
eeObj.WriteMem32(0x0014aaf0,0x24050000)
eeObj.WriteMem32(0x0014ab18,0x24050000)
eeObj.WriteMem32(0x0014ab48,0x24050000)

--subtitles off
--eeObj.WriteMem32(0x00227774,0x11e00019)

--60 FPS
--eeObj.WriteMem32(0x0014cf74,0x340f0000)
end

emuObj.AddVsyncHook(widescreen)