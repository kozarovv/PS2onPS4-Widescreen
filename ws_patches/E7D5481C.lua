apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dragon Ball Z Sparking! (J)(SLPS-25560)
--comment=Widescreen hack by sergx12/ElHecht (NTSC-J by Arapapa)

-- 16:9 menu
eeObj.WriteMem32(0x001f94c4,0x3F600000)

--803f013c 00208144 1000a527
eeObj.WriteMem32(0x0011e2d8,0x3c013f40)
eeObj.WriteMem32(0x0011e308,0x3c01442b)

--803f013c 00008144 86230046
eeObj.WriteMem32(0x0011e398,0x3c013f40)
eeObj.WriteMem32(0x0011e3b0,0x3c01442b)

eeObj.WriteMem32(0x0011e400,0x3c013f40)
eeObj.WriteMem32(0x0011e414,0x3c01442b)

--803f013c 00088144 0045013c
eeObj.WriteMem32(0x0010f500,0x3c013f40)
eeObj.WriteMem32(0x0010f528,0x3c01442b)


-- 16:9 gameplay
eeObj.WriteMem32(0x00083f80,0x00229FDC)

--3c013f80 00088144 70b16324
eeObj.WriteMem32(0x00229FDC,0x3c013f40)
eeObj.WriteMem32(0x0022A010,0x3c01442b)
eeObj.WriteMem32(0x0022A944,0x3c013f40)
eeObj.WriteMem32(0x0022A98C,0x3c01442b)
eeObj.WriteMem32(0x0022AA80,0x3c013f40)
eeObj.WriteMem32(0x0022AA98,0x3c01442b)
eeObj.WriteMem32(0x0022AAF8,0x3c013f40)
eeObj.WriteMem32(0x0022AB0C,0x3c01442b)
end

emuObj.AddVsyncHook(widescreen)