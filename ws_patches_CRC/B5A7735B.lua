apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dot Hack Part 1 - Infection (PAL-M5) (SLES-52237)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010a64c,0x3c023f40)
eeObj.WriteMem32(0x001eed6c,0x3c0a3f40)

-- 16:10
--eeObj.WriteMem32(0x0010a628,0x3c193f55)
--eeObj.WriteMem32(0x0010a64c,0x37395555)
--eeObj.WriteMem32(0x0010a660,0x44999000)
--eeObj.WriteMem32(0x001eed6c,0x3c0a3f55)
--eeObj.WriteMem32(0x001eed70,0x354a5555)

-- 16:9 and 16:10 modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x001c1734,0x0807bb58)
eeObj.WriteMem32(0x001c1738,0x00000000)
eeObj.WriteMem32(0x001eed60,0x46006346)
eeObj.WriteMem32(0x001eed64,0x3c093f80)
eeObj.WriteMem32(0x001eed68,0x44899800)
eeObj.WriteMem32(0x001eed74,0x448a9000)
eeObj.WriteMem32(0x001eed78,0x10490006)
eeObj.WriteMem32(0x001eed7c,0x00000000)
eeObj.WriteMem32(0x001eed80,0x3c0b0000)
eeObj.WriteMem32(0x001eed84,0x356b0000)
eeObj.WriteMem32(0x001eed88,0x3c0c001c)
eeObj.WriteMem32(0x001eed8c,0xad8b1740)
eeObj.WriteMem32(0x001eed90,0xad8b1748)
eeObj.WriteMem32(0x001eed94,0x080705ce)

-- Note
-- In general the code for this game would look like this :
--   eeObj.WriteMem32(0x0010a64c,0x3c023f40)
--   eeObj.WriteMem32(0x001c172c,0x3c023f40)
--   eeObj.WriteMem32(0x001c1738,0x461294c3)
-- Unfortunately the game uses a different elf file for each language
-- and the spanish version (HACK.01S) has an offset for the
-- hor fov 2. So i wrote a fix which implements the hor fov modification
-- and corrects the screwed up code caused by the offset.
end

emuObj.AddVsyncHook(widescreen)