apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mercenaries (J)(SLPM-65942)
--comment=Widescreen Hack by ElHecht (NTSC-J by Arapapa)

-- 16:9 
--a800a0e7 ffff0324 02000224 ffff4224 00000000 00000000 00000000 00000000 00000000
eeObj.WriteMem32(0x0033c688,0x3c013f40)

-- 16:10 
--eeObj.WriteMem32(0x0033c688,0x3c013f55)
--eeObj.WriteMem32(0x0033c68c,0x34215555)

-- 16:9 and 16:10 main modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x0033c690,0x4481f000)
eeObj.WriteMem32(0x0033c6d0,0x4600f306)

--803f013c 00a88144 02b00146
eeObj.WriteMem32(0x0034055c,0x461e0843)
eeObj.WriteMem32(0x00340560,0x46010d43)

--00608144 2d20a003 80bf013c 
eeObj.WriteMem32(0x00349240,0x4600f306)

--42080346 02000346 40080446
eeObj.WriteMem32(0x0033afe8,0x0812960c)
eeObj.WriteMem32(0x0033afec,0x00000000)

eeObj.WriteMem32(0x004a5830,0x46030842)
eeObj.WriteMem32(0x004a5834,0x46030002)
eeObj.WriteMem32(0x004a5838,0x461e0002)
eeObj.WriteMem32(0x004a583c,0x080cf1a3)
end

emuObj.AddVsyncHook(widescreen)