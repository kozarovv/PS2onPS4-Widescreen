apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by flameofrecca (NTSC-J by Arapapa)



--52 B8 5E 3F FE FF 7F 4B 00 00 00 C0 FE FF FF C8
eeObj.WriteMem32(0x00691280,0x3f947ae1)
--00 00 00 3F 00 00 80 3D 00 00 00 BF 00 00 80 3E
eeObj.WriteMem32(0x0069125C,0x3ec00000)

--Map Screen HUD, text fixes
--search the 206d**** address range for more map screen hud fixes
--00 00 90 41 00 00 90 C1 96 65 36 B6 00 00 90 41 (2nd)
eeObj.WriteMem32(0x00700EC8,0x41580000)
--00 00 90 41 00 00 90 41 96 65 36 36 00 00 80 3F (2nd)
eeObj.WriteMem32(0x00700ED4,0x41580000)

--00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F 3F D0 E6 FF (2nd)
eeObj.WriteMem32(0x00705358,0x3f400000)
--00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F FF FF FF FF (3rd)
eeObj.WriteMem32(0x007050E8,0x3f400000)
--00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F FF FF FF FF (2nd)
eeObj.WriteMem32(0x007051B8,0x3f400000)
--00 00 80 3F 00 00 80 3F 00 00 80 3F 00 00 80 3F FF FF FF FF (1st)
eeObj.WriteMem32(0x00705288,0x3f400000)
--00 00 68 42 00 00 C7 43 00 F2 02 3A 40 DF 7F 3F
eeObj.WriteMem32(0x006FD8D4,0x425c0000)
--00 00 F4 42 00 00 A7 43 44 DF 7F 3F 00 00 03 3A
eeObj.WriteMem32(0x006FD8E8,0x42fa0000)

--Onscreen HUD
--00 00 70 42 00 00 48 42 08 00 70 3E 2C 00 48 3E
eeObj.WriteMem32(0x00746344,0x42340000)
--00 00 80 42 00 00 78 42 29 00 F0 3E 14 00 C0 3E
eeObj.WriteMem32(0x00747740,0x42900000)
--00 00 80 42 00 00 FC 42 29 00 F0 3E 56 FF 1F 3F
eeObj.WriteMem32(0x00747754,0x42900000)
--00 00 00 43 00 00 78 42 ED 00 38 3F 14 00 C0 3E
eeObj.WriteMem32(0x00747768,0x42f40000)
--00 00 00 43 00 00 FC 42 ED 00 38 3F 56 FF 1F 3F
eeObj.WriteMem32(0x0074777C,0x42f40000)
--00 00 24 43 FF FF 1B 42 10 00 F0 3E 38 00 12 3F
eeObj.WriteMem32(0x00746058,0x43140000)
--00 00 24 43 00 00 15 43 10 00 F0 3E 00 00 80 3F
eeObj.WriteMem32(0x0074606C,0x43140000)
--00 00 30 42 00 00 15 43 00 00 00 00 00 00 80 3F
eeObj.WriteMem32(0x00746044,0x42680000)
--00 00 30 42 00 00 1C 42 00 00 00 00 38 00 12 3F
eeObj.WriteMem32(0x00746030,0x42680000)
--00 00 24 43 FF FF BB 42 00 00 80 3F 00 61 7E 3B
eeObj.WriteMem32(0x0074F428,0x43140000)
--00 00 24 43 FF FF 14 43 00 00 80 3F E8 FB 5F 3E
eeObj.WriteMem32(0x0074F43C,0x43140000)
--00 00 24 43 FE FF 1B 42 00 00 80 3F 08 FB 5F 3E
eeObj.WriteMem32(0x0074F4D0,0x43140000)
--00 00 24 43 FF FF BB 42 00 00 80 3F 00 0F 7C 3B
eeObj.WriteMem32(0x0074F4E4,0x43140000)
--00 00 30 42 FE FF 1B 42 B0 03 08 3F 08 FB 5F 3E
eeObj.WriteMem32(0x0074F4A8,0x42680000)
--00 00 30 42 FF FF BB 42 B0 03 08 3F 00 0F 7C 3B
eeObj.WriteMem32(0x0074F4BC,0x42680000)
--00 00 30 42 FF FF 14 43 22 02 08 3F E8 FB 5F 3E
eeObj.WriteMem32(0x0074F414,0x42680000)
--00 00 30 42 FF FF BB 42 22 02 08 3F 00 61 7E 3B
eeObj.WriteMem32(0x0074F400,0x42680000)
--00 00 50 42 00 00 50 42 44 FE 4F 3E 90 FF 47 3E
eeObj.WriteMem32(0x00746604,0x421c0000)
end

emuObj.AddVsyncHook(widescreen)