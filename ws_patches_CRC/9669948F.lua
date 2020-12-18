apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dragon Ball Z - Sparking! (K)(SLKA-25307)
--comment=Widescreen hack by sergx12/ElHecht (NTSC-K by Arapapa)

-- 16:9 menu
eeObj.WriteMem32(0x001fc244,0x3F600000)

--803f013c 00208144 1000a527
eeObj.WriteMem32(0x001201c8,0x3c013f40)
eeObj.WriteMem32(0x001201f8,0x3c01442b)

--803f013c 00008144 86230046
eeObj.WriteMem32(0x00120288,0x3c013f40)
eeObj.WriteMem32(0x001202a0,0x3c01442b)

eeObj.WriteMem32(0x001202f0,0x3c013f40)
eeObj.WriteMem32(0x00120304,0x3c01442b)

--803f013c 00088144 0045013c
eeObj.WriteMem32(0x001112b0,0x3c013f40)
eeObj.WriteMem32(0x001112d8,0x3c01442b)




-- 16:9 gameplay
eeObj.WriteMem32(0x00083f80,0x0022CCDC)

--3c013f80 00088144 70b16324
eeObj.WriteMem32(0x0022CCDC,0x3c013f40)
eeObj.WriteMem32(0x0022CD10,0x3c01442b)
eeObj.WriteMem32(0x0022D644,0x3c013f40)
eeObj.WriteMem32(0x0022D68C,0x3c01442b)
eeObj.WriteMem32(0x0022D780,0x3c013f40)
eeObj.WriteMem32(0x0022D798,0x3c01442b)
eeObj.WriteMem32(0x0022D7F8,0x3c013f40)
eeObj.WriteMem32(0x0022D80C,0x3c01442b)
end

emuObj.AddVsyncHook(widescreen)