apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=16:9 widescreen hack by nemesis2000 and devina40 (NTSC-K by Arapapa)

--16:9 widescreen by nemesis2000
eeObj.WriteMem32(0x00336ECC,0x3F400000)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x001E4844,0x3C013F40)
eeObj.WriteMem32(0x001E4848,0x0C07918E)
eeObj.WriteMem32(0x001E484C,0x44811800)
eeObj.WriteMem32(0x001E4850,0x8F84BD5C)
eeObj.WriteMem32(0x001E4854,0x0C079AAC)
eeObj.WriteMem32(0x001E4858,0x0040802D)
eeObj.WriteMem32(0x001E485C,0x0200102D)
eeObj.WriteMem32(0x001E4860,0xDFBF0008)
eeObj.WriteMem32(0x001E4864,0x27BD0010)
eeObj.WriteMem32(0x001E4868,0x03E00008)
eeObj.WriteMem32(0x001E486C,0xDFB00000)
eeObj.WriteMem32(0x001E46EC,0x01C02820)
eeObj.WriteMem32(0x001E46F0,0xE4830030)
eeObj.WriteMem32(0x0033AA58,0x0000006A)

--Lens Flare's fix 
--B000BD27 00000000 0c9a8b93
eeObj.WriteMem32(0x0014f69c,0x3c013f40)
eeObj.WriteMem32(0x0014f70c,0x44810800)
eeObj.WriteMem32(0x0014f710,0x46016302)

--(0c053da7)
eeObj.WriteMem32(0x0013a10c,0x0c053da7)
eeObj.WriteMem32(0x0013a194,0x0c053da7)
eeObj.WriteMem32(0x0013a1fc,0x0c053da7)
eeObj.WriteMem32(0x0013a274,0x0c053da7)

--Dither Effect Off
--12004054 1800838e
eeObj.WriteMem32(0x0019ec5c,0x10000012)

--Focus Effect Off
--a82e080c 2d282002
--eeObj.WriteMem32(0x0020b1d4,0x00000000)
end

emuObj.AddVsyncHook(widescreen)