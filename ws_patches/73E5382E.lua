apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by  ElHecht (NTSC-J by Arapapa)

--Widescreen hack 16:9

--00000000 00000000 43ad1346 00000000
eeObj.WriteMem32(0x001C3404,0x3c013f40)
eeObj.WriteMem32(0x001C3408,0x4481e800)
eeObj.WriteMem32(0x001C3410,0x461dbdc3)

--00000000 03100046 d00100e6 (2 times)
eeObj.WriteMem32(0x002A2568,0x461d0002)
eeObj.WriteMem32(0x002A2330,0x461d0002)

--HUD fix by harry62
--00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 D8 44 00 00 E4 44 00 00 14 45 00 00 0E 45
eeObj.WriteMem32(0x0049EE30,0x3F3C28F6)
eeObj.WriteMem32(0x0049EE34,0x3F800000)

--HUD Position by harry62
--00 00 D8 44 00 00 E4 44 00 00 14 45 00 00 0E 45
eeObj.WriteMem32(0x0049EE40,0x44E2A000)
eeObj.WriteMem32(0x0049EE48,0x44E42000)

end

emuObj.AddVsyncHook(widescreen)