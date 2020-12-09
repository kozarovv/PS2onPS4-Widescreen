apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dropship - United Peace Force (E)(SCES-50459)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--0c000396 58000fc6 (2nd)
eeObj.WriteMem32(0x001c1648,0x08092360)

eeObj.WriteMem32(0x00248d80,0xc60f0058)
eeObj.WriteMem32(0x00248d84,0x3c013f40)
eeObj.WriteMem32(0x00248d88,0x4481f000)
eeObj.WriteMem32(0x00248d8c,0x461e7bc2)
eeObj.WriteMem32(0x00248d90,0x08070593)
end

emuObj.AddVsyncHook(widescreen)