apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=One Piece - Grand Adventure (PAL-E) (SLES-54165)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x002b56d8,0x3c013f40)
eeObj.WriteMem32(0x002b56ec,0x4481f000)
eeObj.WriteMem32(0x002b5730,0x461ec602)

-- 16:10
--eeObj.WriteMem32(0x002b56d8,0x3c013f55)
--eeObj.WriteMem32(0x002b56ec,0x34215555)
--eeObj.WriteMem32(0x002b56f0,0x4481f000)
--eeObj.WriteMem32(0x002b5730,0x461ec602)

-- 16:9 and 16:10 menu fixes
eeObj.WriteMem32(0x00426754,0x461e0003)

eeObj.WriteMem32(0x002b1ebc,0x46000802)
eeObj.WriteMem32(0x002b1ec0,0x4600a742)
eeObj.WriteMem32(0x002b1f10,0x461e2943)
eeObj.WriteMem32(0x002b1f58,0x4600e946)

eeObj.WriteMem32(0x003a9c80,0x46000f02)
eeObj.WriteMem32(0x003a9c90,0x461c0002)
eeObj.WriteMem32(0x003a9c94,0x461e0743)
eeObj.WriteMem32(0x003a9ce0,0x4600e006)
eeObj.WriteMem32(0x003a9ce4,0x461e0743)
eeObj.WriteMem32(0x003a9d1c,0xe61d0070)

eeObj.WriteMem32(0x003aa80c,0x461e0743)
eeObj.WriteMem32(0x003aa818,0xe69d0070)

eeObj.WriteMem32(0x003c2110,0x461e0743)
eeObj.WriteMem32(0x003c2118,0xe63d0f50)

eeObj.WriteMem32(0x003c3e1c,0x461e0743)
eeObj.WriteMem32(0x003c3e20,0xe45d1b00)

eeObj.WriteMem32(0x003c3e98,0x461e0743)
eeObj.WriteMem32(0x003c3e9c,0xe45d1b00)
eeObj.WriteMem32(0x003c3ea0,0x00000000)

eeObj.WriteMem32(0x00413514,0x461e0743)
eeObj.WriteMem32(0x0041351c,0xe61d0070)

eeObj.WriteMem32(0x00415c84,0x461e0003)

eeObj.WriteMem32(0x00415cd8,0x3c19c00c)
eeObj.WriteMem32(0x00415ce8,0x3739cccd)
eeObj.WriteMem32(0x00415cf0,0x4499e800)
eeObj.WriteMem32(0x00415cf4,0x461eef43)
eeObj.WriteMem32(0x00415cf8,0x4600eb06)
eeObj.WriteMem32(0x00415d24,0x4600eb07)

eeObj.WriteMem32(0x0041fd04,0x461e0743)
eeObj.WriteMem32(0x0041fd0c,0xe63d0070)
end

emuObj.AddVsyncHook(widescreen)