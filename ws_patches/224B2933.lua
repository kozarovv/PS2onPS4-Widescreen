apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen correction by nemesis2000 (pnach by Little Giant)
--gameplay
eeObj.WriteMem32(0x0010285c,0x3c013f40)
eeObj.WriteMem32(0x00102860,0x44810000)
eeObj.WriteMem32(0x00102868,0x4600c602)

--No interlacing by asasega
--01 00 00 03 03 E0 07 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
eeObj.WriteMem32(0x017288FD,0x00000000)
--08 00 42 64 02 00 00 10 3C 10 02 00 3C 11 06 00
eeObj.WriteMem32(0x00100F4C,0x00000000)
--08 00 42 64 02 00 00 10 3C 10 02 00 3C 11 06 00
eeObj.WriteMem32(0x001011B4,0x00000000)
--14 94 8E 93 40 F8 17 00 10 50 00 00 18 50 57 01
eeObj.WriteMem32(0x00183544,0x00007025)
--08 79 04 24 3C 20 04 00 00 70 84 34 18 00 03 24
eeObj.WriteMem32(0x0019C2B4,0x24047900)
end

emuObj.AddVsyncHook(widescreen)