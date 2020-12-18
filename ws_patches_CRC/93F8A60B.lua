apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kingdom Hearts II (J)  (SLPM_662.33)
--comment=Widescreen patch (pnach NTSC-J by Arapapa)

--Widescreen
eeObj.WriteMem32(0x003778e8,0x43c00000)
eeObj.WriteMem32(0x003778ec,0x43e00000)
eeObj.WriteMem32(0x00377920,0x3f19999A)
eeObj.WriteMem32(0x0037ec3c,0x3F19999A)
eeObj.WriteMem32(0x003838c0,0x3F19999A)

--black borders fix (4 times)
eeObj.WriteMem32(0x0014ae38,0x24050000)
eeObj.WriteMem32(0x0014ae60,0x24050000)
eeObj.WriteMem32(0x0014ae88,0x24050000)
eeObj.WriteMem32(0x0014aeb8,0x24050000)

--subtitles off
--eeObj.WriteMem32(0x0022722c,0x11e00019)

--font fix
eeObj.WriteMem32(0x0037adb0,0x3f400000)
eeObj.WriteMem32(0x0037adb4,0x3f400000)
eeObj.WriteMem32(0x0037adb8,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)