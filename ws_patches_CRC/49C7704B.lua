apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010a68c,0x3c023f40)
eeObj.WriteMem32(0x001f9580,0x3c0a3f40)

-- 16:10
--eeObj.WriteMem32(0x0010a668,0x3c193f55)
--eeObj.WriteMem32(0x0010a68c,0x37395555)
--eeObj.WriteMem32(0x0010a6a0,0x44999000)
--eeObj.WriteMem32(0x001f9580,0x3c0a3f55)
--eeObj.WriteMem32(0x001f9584,0x354a5555)

-- 16:9 and 16:10 modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x001d3904,0x0807e55d)
eeObj.WriteMem32(0x001d3908,0x00000000)
eeObj.WriteMem32(0x001f9574,0x46006346)
eeObj.WriteMem32(0x001f9578,0x3c093f80)
eeObj.WriteMem32(0x001f957c,0x44899800)
eeObj.WriteMem32(0x001f9588,0x448a9000)
eeObj.WriteMem32(0x001f958c,0x10490006)
eeObj.WriteMem32(0x001f9590,0x00000000)
eeObj.WriteMem32(0x001f9594,0x3c0b0000)
eeObj.WriteMem32(0x001f9598,0x356b0000)
eeObj.WriteMem32(0x001f959c,0x3c0c001d)
eeObj.WriteMem32(0x001f95a0,0xad8b3910)
eeObj.WriteMem32(0x001f95a4,0xad8b3918)
eeObj.WriteMem32(0x001f95ac,0x08074e42)

-- Note
-- In general the code for this game would look like this :
--   eeObj.WriteMem32(0x0010a68c,0x3c023f40)
--   eeObj.WriteMem32(0x001d38fc,0x3c023f40)
--   eeObj.WriteMem32(0x001d3908,0x461294c3)
-- Unfortunately the game uses a different elf file for each language
-- and the spanish version (HACK.03S) has an offset for the
-- hor fov 2. So i wrote a fix which implements the hor fov modification
-- and corrects the screwed up code caused by the offset.
end

emuObj.AddVsyncHook(widescreen)