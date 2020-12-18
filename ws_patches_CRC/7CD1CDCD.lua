apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by ggxxtonghao (initial active X FOV hack) and Aced14 (ELF and 16:10 hacks)

--16:9 Widescreen
eeObj.WriteMem32(0x001363E4,0x00003F40)

--16:10 Widescreen (Normal)
--eeObj.WriteMem32(0x001363E4,0x08045210)
--eeObj.WriteMem32(0x00114840,0x3C033F55)
--eeObj.WriteMem32(0x00114844,0x0804D8FB)
--eeObj.WriteMem32(0x00114848,0x34635555)

--16:10 Widescreen (Ultra)
--eeObj.WriteMem32(0x001363E4,0x00003F40)
--eeObj.WriteMem32(0x001363E0,0x00003F4A)
--eeObj.WriteMem32(0x001363E8,0x0000C083)
end

emuObj.AddVsyncHook(widescreen)