apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14

--16:9 Widescreen
eeObj.WriteMem32(0x00134228,0x00003F40)

--16:10 Widescreen (Normal)
--eeObj.WriteMem32(0x00134224,0x08044F00)
--eeObj.WriteMem32(0x00134228,0x00003F55)
--eeObj.WriteMem32(0x00113C00,0x34425555)
--eeObj.WriteMem32(0x00113C04,0x0804D08B)
--eeObj.WriteMem32(0x00113C08,0x8FA3001C)

--16:10 Widescreen (Ultra)
--eeObj.WriteMem32(0x00134228,0x00003F40)
--eeObj.WriteMem32(0x00134230,0x00003F4A)
--eeObj.WriteMem32(0x00134234,0x0000C083)
end

emuObj.AddVsyncHook(widescreen)