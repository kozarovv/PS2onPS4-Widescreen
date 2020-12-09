apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kingdom Hearts II NTSC-U
--comment=KH2 - NTSC-U

-- old 16:9 hack by - cassidy1991
--eeObj.WriteMem32(0x003B223C,0x3F19999A)
--eeObj.WriteMem32(0x00378100,0x43C00000)
--eeObj.WriteMem32(0x0037F484,0x3F19999A)
--eeObj.WriteMem32(0x003B233C,0x3F19999A)
--eeObj.WriteMem32(0x003840D0,0x3F19999A)

-- new 16:9 hack by - ElHecht
eeObj.WriteMem32(0x00106c70,0x3c013f4c)
eeObj.WriteMem32(0x00106c88,0x3421cccc)
eeObj.WriteMem32(0x00106c8c,0x4481f800)
eeObj.WriteMem32(0x00106c90,0x461fa503)
eeObj.WriteMem32(0x00106cb4,0x3c1b3f40)
eeObj.WriteMem32(0x00106cc0,0x449bf000)
eeObj.WriteMem32(0x00106cd0,0x461effc2)
eeObj.WriteMem32(0x00106cd4,0xe61f004c)

--optional zoom for cutscenes (hides sudden pop-in)
eeObj.WriteMem32(0x00378104,0x43f90000)

--font fix
eeObj.WriteMem32(0x0037ae44,0x3F400000)
eeObj.WriteMem32(0x0037ae48,0x3F400000)
eeObj.WriteMem32(0x0037ae4c,0x3F400000)

--black bar fix
eeObj.WriteMem32(0x0014aaf0,0x24050000)
eeObj.WriteMem32(0x0014ab18,0x24050000)
eeObj.WriteMem32(0x0014ab40,0x24050000)
eeObj.WriteMem32(0x0014ab70,0x24050000)

--lower subtitles
eeObj.WriteMem32(0x001aae88,0x240a0190)

--subtitles off
--eeObj.WriteMem32(0x002274cc,0x11e00019)

--60 FPS
--eeObj.WriteMem32(0x00356F4C,0x00000000)
end

emuObj.AddVsyncHook(widescreen)