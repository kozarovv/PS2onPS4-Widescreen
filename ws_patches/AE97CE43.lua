apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disgaea - Hour of Darkness (K)(SLKA-25048)
--comment=Widescreen hack

--Widescreen hack 16:9

eeObj.WriteMem32(0x001051b4,0x3C013F40)
eeObj.WriteMem32(0x001051b8,0x44810000)
eeObj.WriteMem32(0x001051c0,0x4600C602)
eeObj.WriteMem32(0x0014d4cc,0x3C033F40)
eeObj.WriteMem32(0x0014d4d4,0xE7A000DC)
eeObj.WriteMem32(0x0014d4d8,0x46000003)
eeObj.WriteMem32(0x0014d4dc,0xE7A000D8)

--480i
--2D280000 02000624 01000724
eeObj.WriteMem32(0x0013b8c8,0x24050001)

--portrait fix
eeObj.WriteMem32(0x001937f8,0x2646001e)
eeObj.WriteMem32(0x00193818,0x2409003c)

--eeObj.WriteMem32(0x0018bb38,0x2646000E)
--eeObj.WriteMem32(0x0018bb5c,0x2409003c)

--eeObj.WriteMem32(0x00187778,0x2546000a)
--eeObj.WriteMem32(0x00187780,0x2409003c)

--eeObj.WriteMem32(0x00187790,0x24c60008)
--eeObj.WriteMem32(0x00184f40,0x24090018)
end

emuObj.AddVsyncHook(widescreen)