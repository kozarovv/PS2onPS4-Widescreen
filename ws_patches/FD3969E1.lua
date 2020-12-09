apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Def Jam - Fight for NY (K)(SLKA-25230)
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)

-- 16:9

--00000000 01000345 1000a4e7
--403f013c  01000345 1000a4e7
eeObj.WriteMem32(0x0021ecfc,0x3c013f40)

--00000000 01000345 1400a4e7
--00f08144 01000345 1400a4e7
eeObj.WriteMem32(0x0021ed10,0x4481f000)

--00000000 01000345 0000a1e7
--43f71e46 01000345 0000a1e7
eeObj.WriteMem32(0x0021ed28,0x461ef743)

--00000000 01000345 0400a1e7
--43ef1e46 01000345 0400a1e7
eeObj.WriteMem32(0x0021ed40,0x461eef43)

--200100e6 2c0104e6
--20011ee6 2c0104e6
eeObj.WriteMem32(0x0021edf8,0xe61e0120)

--580100e6 5c0100e6
--58011de6 5c011de6
eeObj.WriteMem32(0x0021ef30,0xe61d0158)
eeObj.WriteMem32(0x0021ef34,0xe61d015c)

-- menu fix 
--803f013c 00508144 00288544
--830a0146 40530a46 00288544
eeObj.WriteMem32(0x0021f4e4,0x46010a83)
eeObj.WriteMem32(0x0021f4e8,0x460a5340)

--0040013c 00688144 00408444
--403f013c 00f08144 00408444
eeObj.WriteMem32(0x0021f4f4,0x3c013f40)
eeObj.WriteMem32(0x0021f4f8,0x4481f000)

--80bf013c 00488144
--47520046 03211e46
eeObj.WriteMem32(0x0021f528,0x46005247)
eeObj.WriteMem32(0x0021f52c,0x461e2103)
end

emuObj.AddVsyncHook(widescreen)