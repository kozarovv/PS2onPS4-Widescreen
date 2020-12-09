apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by sergx12/ElHecht (NTSC-U by Arapapa)

-- 16:9 menu
eeObj.WriteMem32(0x001fa2c4,0x3F600000)

--803f013c 00208144 1000a527
eeObj.WriteMem32(0x0011e2c8,0x3c013f40)
eeObj.WriteMem32(0x0011e2f8,0x3c01442b)

--803f013c 00008144 86230046
eeObj.WriteMem32(0x0011e388,0x3c013f40)
eeObj.WriteMem32(0x0011e3a0,0x3c01442b)

eeObj.WriteMem32(0x0011e3f0,0x3c013f40)
eeObj.WriteMem32(0x0011e404,0x3c01442b)

--803f013c 00088144 0045013c
eeObj.WriteMem32(0x0010f4f0,0x3c013f40)
eeObj.WriteMem32(0x0010f518,0x3c01442b)

-- 16:9 gameplay
eeObj.WriteMem32(0x00083f80,0x0022AE34)

--3c013f80 00088144 70b16324
eeObj.WriteMem32(0x0022AE34,0x3c013f40)
eeObj.WriteMem32(0x0022AE68,0x3c01442b)

eeObj.WriteMem32(0x0022b79c,0x3c013f40)
eeObj.WriteMem32(0x0022b7dc,0x3c01442b)

eeObj.WriteMem32(0x0022b8d8,0x3c013f40)
eeObj.WriteMem32(0x0022b8f0,0x3c01442b)

eeObj.WriteMem32(0x0022b950,0x3c013f40)
eeObj.WriteMem32(0x0022b964,0x3c01442b)
end

emuObj.AddVsyncHook(widescreen)