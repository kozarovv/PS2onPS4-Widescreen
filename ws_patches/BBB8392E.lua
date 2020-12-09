apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@141218
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========

-- ==========
 --gametitle=Gauntlet - Seven Sorrows
 --comment= Gauntlet - Seven Sorrows * SLES-53667 * PAL-M5 * BBB8392E
 --comment=- Widescreen hack by nemesis2000.
 eeObj.WriteMem32(0x00446620,0x24020002)
-- ==========

-- ==========
-- Alternative (and original) hack - less fps (do not use):
-- --comment=- Widescreen hack by pelvicthrustman, ported by pgert.
--  eeObj.WriteMem32(0x003B1510,0x3C013F40)
--  eeObj.WriteMem32(0x003B151C,0x4481F800)
--  eeObj.WriteMem32(0x003B153C,0xAFA300F8)
--  eeObj.WriteMem32(0x003B1540,0x461F6303)
--  eeObj.WriteMem32(0x003B1544,0x460C1043)
--  eeObj.WriteMem32(0x003B1688,0x3C063F00)
--  eeObj.WriteMem32(0x003B168C,0x44860800)
-- ==========

end

emuObj.AddVsyncHook(widescreen)