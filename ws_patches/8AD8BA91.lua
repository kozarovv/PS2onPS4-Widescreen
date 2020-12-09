apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tim Burton's The Nightmare Before Christmas (NTSC-U)(SLUS-20860)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--d7a3f03e 00000045 00000045 0000a040
eeObj.WriteMem32(0x0070CDD8,0x3F206D2F)

eeObj.WriteMem32(0x0151E1D4,0x3F19999A)
eeObj.WriteMem32(0x006FA908,0x3F400000)

eeObj.WriteMem32(0x00D5BA90,0x3F400000)
eeObj.WriteMem32(0x00D5BAE4,0x3F400000)

eeObj.WriteMem32(0x006F9D40,0x3F400000)
eeObj.WriteMem32(0x004A4500,0x3F400000)
eeObj.WriteMem32(0x004A1200,0x3F400000)
eeObj.WriteMem32(0x004AC350,0x3F400000)
eeObj.WriteMem32(0x004A1A3C,0x3F400000)
eeObj.WriteMem32(0x004A0870,0x3F400000)

eeObj.WriteMem32(0x0049771C,0x3F400000)
eeObj.WriteMem32(0x003A1AF0,0x3F400000)
eeObj.WriteMem32(0x003A1B10,0x3F400000)

eeObj.WriteMem32(0x004988A8,0x3F400000)
eeObj.WriteMem32(0x00498944,0x3F400000)
eeObj.WriteMem32(0x004989E0,0x3F400000)
eeObj.WriteMem32(0x00498A7C,0x3F400000)
eeObj.WriteMem32(0x0049880C,0x3F400000)

eeObj.WriteMem32(0x004A50B4,0x3F400000)
eeObj.WriteMem32(0x004A5150,0x3F400000)

eeObj.WriteMem32(0x004B72A8,0x3F400000)
eeObj.WriteMem32(0x004B7424,0x3F400000)
eeObj.WriteMem32(0x004B74C0,0x3F400000)
eeObj.WriteMem32(0x004B755C,0x3F400000)
eeObj.WriteMem32(0x004B75F8,0x3F400000)
eeObj.WriteMem32(0x004B7694,0x3F400000)
eeObj.WriteMem32(0x004B7730,0x3F400000)
eeObj.WriteMem32(0x004B7904,0x3F400000)

eeObj.WriteMem32(0x004B77CC,0x3F400000)
eeObj.WriteMem32(0x004B7868,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)