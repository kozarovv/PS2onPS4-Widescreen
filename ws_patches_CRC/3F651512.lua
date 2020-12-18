apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (Pnach by Little Giant)

--gameplay
eeObj.WriteMem32(0x0032006c,0x3f400000)
--eeObj.WriteMem32(0x003E185C,0x3F400000)

--FMV's fix(New)
eeObj.WriteMem32(0x00368140,0x44200000)
eeObj.WriteMem32(0x00368148,0x3e333333)

eeObj.WriteMem32(0x00212808,0x0c09aa90)
eeObj.WriteMem32(0x0021280c,0xc5e10000)
eeObj.WriteMem32(0x00212810,0x8faf00b0)
eeObj.WriteMem32(0x00212814,0x0200202d)
eeObj.WriteMem32(0x00212818,0x8fae00b4)
eeObj.WriteMem32(0x0021281c,0x448f0000)
eeObj.WriteMem32(0x00212820,0x46800020)
eeObj.WriteMem32(0x00212824,0x25effffe)
eeObj.WriteMem32(0x00212828,0x46010042)
eeObj.WriteMem32(0x0021282c,0xe7a10044)
eeObj.WriteMem32(0x00212830,0xafaf002c)
eeObj.WriteMem32(0x00212834,0xafae0030)
eeObj.WriteMem32(0x00212838,0x3c013f40)
eeObj.WriteMem32(0x0021283c,0x44810800)
eeObj.WriteMem32(0x00212840,0x4601b582)
eeObj.WriteMem32(0x00212844,0x4600b583)
eeObj.WriteMem32(0x00212848,0x448e0800)
eeObj.WriteMem32(0x0021284c,0x46800860)

--Dither + Ghost post-process Effect Off
--eeObj.WriteMem32(0x00156024,0x00000000)
--Disable dark filter (cutscene)
--eeObj.WriteMem32(0x0015609c,0x00000000)

--Disable all bloom (speedup, but makes the game seem dull)
--eeObj.WriteMem32(0x00156164,0x00000000)

--Disable overbloom (cutscene)
--eeObj.WriteMem32(0x00156100,0x00000000)
--Decrease overbloom (gameplay)
--eeObj.WriteMem32(0x00364FFC,0x3F400000)

--Focus Effect Off
eeObj.WriteMem32(0x0015606c,0x00000000)
--Bloom offset (fixes bloom glitch)
eeObj.WriteMem32(0x00365008,0x43A30000)
eeObj.WriteMem32(0x0036500C,0x43660000)

--FMW's fix (old)
--eeObj.WriteMem32(0x00368140,0x43f00000)
--eeObj.WriteMem32(0x00368148,0x42d40000)
end

emuObj.AddVsyncHook(widescreen)