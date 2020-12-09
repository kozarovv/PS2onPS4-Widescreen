apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Eiji (initial active X FOV hack) and Aced14 (ELF and 16:10 hacks)

--16:9 Widescreen
eeObj.WriteMem32(0x0013B188,0x00003F40)

--16:10 Widescreen (Normal)
--eeObj.WriteMem32(0x0013B188,0x08045820)
--eeObj.WriteMem32(0x00116080,0x3C023F55)
--eeObj.WriteMem32(0x00116084,0x0804EC63)
--eeObj.WriteMem32(0x00116088,0x34425555)

--16:10 Widescreen (Ultra)
--eeObj.WriteMem32(0x0013B188,0x00003F40)
--eeObj.WriteMem32(0x0013B190,0x00003F4A)
--eeObj.WriteMem32(0x0013B194,0x0000C083)

--HUD
--eeObj.WriteMem32(0x00130B68,0x0000????)
end

emuObj.AddVsyncHook(widescreen)