apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen 16:9 (NTSC-K) hack by 99skull


--X-Fov by ElHecht
eeObj.WriteMem32(0x003aa864,0x3c194455)
eeObj.WriteMem32(0x003aa86c,0x37395555)
eeObj.WriteMem32(0x003aa884,0x44990800)
eeObj.WriteMem32(0x00217ab8,0x3c024456)

--progressive Common Code(27 line)
eeObj.WriteMem32(0x00100234,0x24110000)
eeObj.WriteMem32(0x00100244,0x24130001)
eeObj.WriteMem32(0x001004EC,0x24160002)
eeObj.WriteMem32(0x001004F4,0x000793C3)
eeObj.WriteMem32(0x001007D8,0x24840032)
eeObj.WriteMem32(0x00100784,0x00000000)
eeObj.WriteMem32(0x003A3C78,0x0C0E91D4)
eeObj.WriteMem32(0x003A3CD4,0x00101540)
eeObj.WriteMem32(0x003A4300,0x0C0E76A0)
eeObj.WriteMem32(0x003A4304,0x3C056071)
eeObj.WriteMem32(0x003A4308,0x34A52435)
eeObj.WriteMem32(0x003A430C,0x00052C38)
eeObj.WriteMem32(0x003A4310,0x34A57160)
eeObj.WriteMem32(0x003A4314,0x00052C38)
eeObj.WriteMem32(0x003A4318,0x34A53524)
eeObj.WriteMem32(0x003A431C,0x0C0E76A0)
eeObj.WriteMem32(0x003A4320,0x24040044)
eeObj.WriteMem32(0x003A4324,0x24050001)
eeObj.WriteMem32(0x003A4328,0x0C0E76A0)
eeObj.WriteMem32(0x003A432C,0x24040045)
eeObj.WriteMem32(0x003A4330,0x080E924D)
eeObj.WriteMem32(0x003A4334,0x0000202D)
eeObj.WriteMem32(0x003A47D0,0x3C020200)
eeObj.WriteMem32(0x003A47D8,0x00621025)
eeObj.WriteMem32(0x003A4904,0x24050000)
eeObj.WriteMem32(0x003A4928,0x0C0E90C0)
eeObj.WriteMem32(0x003A4970,0x00111D40)
--progressive 480P
eeObj.WriteMem32(0x00100238,0x24120050)
eeObj.WriteMem32(0x003A8010,0x248401B8)

--dural selectable
eeObj.WriteMem32(0x001A4D30,0x24020001)
eeObj.WriteMem32(0x0023D994,0x00000000)
eeObj.WriteMem32(0x0023D9A8,0x00000000)
--dural random map
eeObj.WriteMem32(0x0022CA5C,0x00000000)
end

emuObj.AddVsyncHook(widescreen)