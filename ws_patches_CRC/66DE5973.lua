apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=widescreen 16:9 (NTSC-K) hack by 99skull
--credit goes to nemesis2000
eeObj.WriteMem32(0x0017F18C,0x3C013F1A)
eeObj.WriteMem32(0x0017F194,0x44810000)

eeObj.WriteMem32(0x0017F1B4,0x468008A0)
eeObj.WriteMem32(0x0017F1B8,0x00041840)
eeObj.WriteMem32(0x0017F1BC,0x00641821)
eeObj.WriteMem32(0x0017F1C0,0x44830800)
eeObj.WriteMem32(0x0017F1C4,0x3C013F6E)
eeObj.WriteMem32(0x0017F1C8,0x3421EEEE)
eeObj.WriteMem32(0x0017F1D4,0x44810000)

eeObj.WriteMem32(0x001FDD20,0x4600A003)
eeObj.WriteMem32(0x001FDD24,0x8F85B034)
eeObj.WriteMem32(0x001FDD28,0x3C04457F)
eeObj.WriteMem32(0x001FDD2C,0x3C034000)
eeObj.WriteMem32(0x001FDD30,0x3484F000)
eeObj.WriteMem32(0x001FDD34,0x44841800)
eeObj.WriteMem32(0x001FDD38,0xE4A001C0)
eeObj.WriteMem32(0x001FDD3C,0x44830800)
eeObj.WriteMem32(0x001FDD40,0x8F84B034)
eeObj.WriteMem32(0x001FDD44,0x8F83B038)
eeObj.WriteMem32(0x001FDD48,0xC48201C0)
eeObj.WriteMem32(0x001FDD4C,0xC4600030)
eeObj.WriteMem32(0x001FDD50,0x3C014020)
eeObj.WriteMem32(0x001FDD54,0x44813000)
eeObj.WriteMem32(0x001FDD58,0x00000000)
eeObj.WriteMem32(0x001FDD5C,0x46001002)
eeObj.WriteMem32(0x001FDD60,0xE4800040)
eeObj.WriteMem32(0x001FDD64,0x8F84B038)
eeObj.WriteMem32(0x001FDD68,0x8F83B034)
eeObj.WriteMem32(0x001FDD6C,0xC4800034)
eeObj.WriteMem32(0x001FDD70,0x46001002)
eeObj.WriteMem32(0x001FDD74,0xE4600054)
eeObj.WriteMem32(0x001FDD78,0xC4800030)
eeObj.WriteMem32(0x001FDD7C,0x46060002)
end

emuObj.AddVsyncHook(widescreen)