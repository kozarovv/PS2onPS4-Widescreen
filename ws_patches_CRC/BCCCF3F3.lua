apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol.31 - The Chikyuu Boueigun (NTSC-J) [SLPM-62344] [BCCCF3F3]
--comment=Widescreen hacks by ggxxtonghao (initial active X FOV hack) and Aced14 (ELF and 16:10 hacks)

--16:9 Widescreen
eeObj.WriteMem32(0x00134B18,0x00003F40)

--16:10 Widescreen (Normal)
--eeObj.WriteMem32(0x00134B14,0x08044F0C)
--eeObj.WriteMem32(0x00134B18,0x00003F55)
--eeObj.WriteMem32(0x00113C30,0x34425555)
--eeObj.WriteMem32(0x00113C34,0x0804D2C7)
--eeObj.WriteMem32(0x00113C38,0x8FA3001C)

--16:10 Widescreen (Ultra)
--eeObj.WriteMem32(0x00134B18,0x00003F40)
--eeObj.WriteMem32(0x00134B20,0x00003F4A)
--eeObj.WriteMem32(0x00134B24,0x0000C083)
end

emuObj.AddVsyncHook(widescreen)