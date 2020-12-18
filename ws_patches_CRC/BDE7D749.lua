apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dot Hack Part 2 - Mutation (PAL-M5) (SLES-52467)
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010a64c,0x3c023f40)
eeObj.WriteMem32(0x001f84c0,0x3c0a3f40)

-- 16:10
--eeObj.WriteMem32(0x0010a628,0x3c193f55)
--eeObj.WriteMem32(0x0010a64c,0x37395555)
--eeObj.WriteMem32(0x0010a660,0x44999000)
--eeObj.WriteMem32(0x001f84c0,0x3c0a3f55)
--eeObj.WriteMem32(0x001f84c4,0x354a5555)

-- 16:9 and 16:10 modifications
-- no need to change anything here! all modifications are calculated
-- based on the hor fov value in the upper 16:9/16:10 section
eeObj.WriteMem32(0x001cb7a4,0x0807e12d)
eeObj.WriteMem32(0x001cb7a8,0x00000000)
eeObj.WriteMem32(0x001f84b4,0x46006346)
eeObj.WriteMem32(0x001f84b8,0x3c093f80)
eeObj.WriteMem32(0x001f84bc,0x44899800)
eeObj.WriteMem32(0x001f84c8,0x448a9000)
eeObj.WriteMem32(0x001f84cc,0x10490006)
eeObj.WriteMem32(0x001f84d0,0x00000000)
eeObj.WriteMem32(0x001f84d4,0x3c0b0000)
eeObj.WriteMem32(0x001f84d8,0x356b0000)
eeObj.WriteMem32(0x001f84dc,0x3c0c001d)
eeObj.WriteMem32(0x001f84e0,0xad8bb7b0)
eeObj.WriteMem32(0x001f84e4,0xad8bb7b8)
eeObj.WriteMem32(0x001f84e8,0x08072dea)

-- Note
-- In general the code for this game would look like this :
--   eeObj.WriteMem32(0x0010a64c,0x3c023f40)
--   eeObj.WriteMem32(0x001cb79c,0x3c023f40)
--   eeObj.WriteMem32(0x001cb7a8,0x461294c3)
-- Unfortunately the game uses a different elf file for each language
-- and the spanish version (HACK.02S) has an offset for the
-- hor fov 2. So i wrote a fix which implements the hor fov modification
-- and corrects the screwed up code caused by the offset.
end

emuObj.AddVsyncHook(widescreen)