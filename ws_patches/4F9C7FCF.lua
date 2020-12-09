apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47 (NTSC-J by Arapapa)

--single player
--00 80 04 44 33 33 B3 3E 33 33 B3 3E DB 0F 49 40
eeObj.WriteMem32(0x00330F94,0x43C6C000)
--00 80 04 44 DB 0F 49 40 DB 0F C9 40 DB 0F 49 C0
eeObj.WriteMem32(0x00330FB4,0x43960000)
--1F 85 EB 3E 7F 6A BC 3E CD CC 4C 3F 1F 85 EB 3E
eeObj.WriteMem32(0x003317C4,0x3F1D0364)

--split screen
--00 C0 C6 43 00 80 04 44 33 33 B3 3E 33 33 B3 3E
eeObj.WriteMem32(0x00330F90,0x43951000)
--1F 85 EB 3E 1F 85 EB 3E 67 90 0A 44 1F 85 EB 3E
eeObj.WriteMem32(0x003317D0,0x3F1D0364)
--1F 85 EB 3E 67 90 0A 44 1F 85 EB 3E FF FF 7F 4B
eeObj.WriteMem32(0x003317D4,0x3F1D0364)

--menu
--CD CC 4C 3F 7F 6A BC 3E FF FF 7F 4B CD CC CC 3D
eeObj.WriteMem32(0x00331880,0x3F199999)

--(*) improved chase cam that shows the whole car as in other Ridge Racer games, instead of only the upper half
--(*) replace 43960000 by 43C6C000 for the original chase cam

--No interlacing by asasega
eeObj.WriteMem32(0x00220740,0x24020000)
end

emuObj.AddVsyncHook(widescreen)