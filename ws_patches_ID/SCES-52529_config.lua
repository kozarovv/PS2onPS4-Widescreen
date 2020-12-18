apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sly 2 - Band of Thieves (PAL-M11) (SCES-52529)
--comment=Widescreen hack by ElHecht

-- Widescreen by nemesis2000
eeObj.WriteMem32(0x0014D778,0x3C013FDD)
eeObj.WriteMem32(0x0014D77C,0x3421A523)

-- Widescreen Bug Fix
eeObj.WriteMem32(0x0014F398,0x08030000)
eeObj.WriteMem32(0x000C0000,0x3C013F40)
eeObj.WriteMem32(0x000C0004,0x4481F000)
eeObj.WriteMem32(0x000C0008,0x461E2102)
eeObj.WriteMem32(0x000C000C,0x08053CE8)
eeObj.WriteMem32(0x000C0010,0x460308C3)

-- Character Portraits Fix
eeObj.WriteMem32(0x001BEA70,0x0C030005)
eeObj.WriteMem32(0x000C0014,0x3C0145AA)
eeObj.WriteMem32(0x000C0018,0x4481F000)
eeObj.WriteMem32(0x000C001C,0x461EA502)
eeObj.WriteMem32(0x000C0020,0x03E00008)
end

emuObj.AddVsyncHook(widescreen)