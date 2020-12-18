apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x003181E8,0x00000000)

--
eeObj.WriteMem32(0x001fdfd0,0x0c0c69a0)
eeObj.WriteMem32(0x001fdfd4,0xc4600030)

eeObj.WriteMem32(0x0031a680,0x3c05005b)
eeObj.WriteMem32(0x0031a684,0x84a28b92)
eeObj.WriteMem32(0x0031a688,0x14400002)
eeObj.WriteMem32(0x0031a68c,0x3c013f80)
eeObj.WriteMem32(0x0031a690,0x3c013f40)
eeObj.WriteMem32(0x0031a694,0x44811000)
eeObj.WriteMem32(0x0031a698,0x46001002)
eeObj.WriteMem32(0x0031a69c,0x03e00008)

eeObj.WriteMem32(0x0031a6a0,0xc48201c0)

--
eeObj.WriteMem32(0x001fdfe4,0x0c0c69a9)
eeObj.WriteMem32(0x001fdfe8,0xc4800034)

eeObj.WriteMem32(0x0031a6a4,0x14400002)
eeObj.WriteMem32(0x0031a6a8,0x3c013fab)
eeObj.WriteMem32(0x0031a6ac,0x3c013f80)
eeObj.WriteMem32(0x0031a6b0,0x44810800)
eeObj.WriteMem32(0x0031a6b4,0x46000802)
eeObj.WriteMem32(0x0031a6b8,0x03e00008)
eeObj.WriteMem32(0x0031a6bc,0x8f83b6c4)

--
eeObj.WriteMem32(0x001fdff8,0x0c0c69b0)
eeObj.WriteMem32(0x001fdffc,0xc4800030)

eeObj.WriteMem32(0x0031a6c0,0x14400002)
eeObj.WriteMem32(0x0031a6c4,0x3c014000)
eeObj.WriteMem32(0x0031a6c8,0x3c013f80)
eeObj.WriteMem32(0x0031a6cc,0x44810800)
eeObj.WriteMem32(0x0031a6d0,0x03e00008)
eeObj.WriteMem32(0x0031a6d4,0x8f83b6c4)

--
eeObj.WriteMem32(0x001fe014,0x0c0c69b6)
eeObj.WriteMem32(0x001fe018,0xc4800034)

eeObj.WriteMem32(0x0031a6d8,0x14400002)
eeObj.WriteMem32(0x0031a6dc,0x3c01402a)
eeObj.WriteMem32(0x0031a6e0,0x3c014000)
eeObj.WriteMem32(0x0031a6e4,0x44810800)
eeObj.WriteMem32(0x0031a6ec,0x03e00008)
eeObj.WriteMem32(0x0031a6f0,0x8f83b6c4)

--old
--eeObj.WriteMem32(0x001fdf6c,0x3c0243e0)
--eeObj.WriteMem32(0x001fdf70,0xc4600034)
--eeObj.WriteMem32(0x001fdf74,0x44820800)
--eeObj.WriteMem32(0x001fdf78,0x46020843)
--eeObj.WriteMem32(0x001fdf7c,0x0c0470b4)
--eeObj.WriteMem32(0x001fdf80,0x46000d03)
--eeObj.WriteMem32(0x001fdf84,0x4600a003)
--eeObj.WriteMem32(0x001fdf88,0x8f85b6c4)
--eeObj.WriteMem32(0x001fdf8c,0x3c04457f)
--eeObj.WriteMem32(0x001fdf90,0x3c034000)
--eeObj.WriteMem32(0x001fdf94,0x3484f000)
--eeObj.WriteMem32(0x001fdf98,0x44841800)
--eeObj.WriteMem32(0x001fdf9c,0xe4a001c0)
--eeObj.WriteMem32(0x001fdfa0,0x44830800)
--eeObj.WriteMem32(0x001fdfa4,0x8f84b6c4)
--eeObj.WriteMem32(0x001fdfa8,0x8f83b6c8)
--eeObj.WriteMem32(0x001fdfac,0xc4600030)
--eeObj.WriteMem32(0x001fdfb0,0x3c013f40)
--eeObj.WriteMem32(0x001fdfb4,0x44811000)
--eeObj.WriteMem32(0x001fdfb8,0x46001002)
--eeObj.WriteMem32(0x001fdfbc,0xc48201c0)
--eeObj.WriteMem32(0x001fdfc0,0x46001002)
--eeObj.WriteMem32(0x001fdfc4,0xe4800040)
--eeObj.WriteMem32(0x001fdfc8,0x8f84b6c8)
--eeObj.WriteMem32(0x001fdfcc,0x8f83b6c4)
--eeObj.WriteMem32(0x001fdfd0,0xc4800034)
--eeObj.WriteMem32(0x001fdfd4,0x46001002)
--eeObj.WriteMem32(0x001fdfd8,0xe4600054)
--eeObj.WriteMem32(0x001fdfdc,0x8f84b6c8)
--eeObj.WriteMem32(0x001fdfe0,0x8f83b6c4)
--eeObj.WriteMem32(0x001fdfe4,0xc4800030)
--eeObj.WriteMem32(0x001fdfe8,0x3c013faa)
--eeObj.WriteMem32(0x001fdfec,0x4481a000)
--eeObj.WriteMem32(0x001fdff0,0x4600a003)
--eeObj.WriteMem32(0x001fdff4,0x46001802)
--eeObj.WriteMem32(0x001fdff8,0x46010003)
--eeObj.WriteMem32(0x001fdffc,0x46001003)
--eeObj.WriteMem32(0x001fe000,0xe4600080)
--eeObj.WriteMem32(0x001fe004,0x8f84b6c8)
--eeObj.WriteMem32(0x001fe008,0x8f83b6c4)
--eeObj.WriteMem32(0x001fe00c,0xc4800034)
--eeObj.WriteMem32(0x001fe010,0x3c013f80)
--eeObj.WriteMem32(0x001fe014,0x4481a000)
--eeObj.WriteMem32(0x001fe018,0x4600a003)

eeObj.WriteMem32(0x001FE590,0x24030155)

--black borders fix
eeObj.WriteMem32(0x002107FC,0x24060000)
--eeObj.WriteMem32(0x0031A6E4,0x24020000)

--cutscenes font fix
eeObj.WriteMem32(0x0031A5F8,0x24020178)
eeObj.WriteMem32(0x0031A600,0x24420043)
end

emuObj.AddVsyncHook(widescreen)