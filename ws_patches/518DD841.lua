apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Fix by PsxFan107 (NTSC-K by Arapapa)

-- Widescreen by nemesis2000
eeObj.WriteMem32(0x0014dfc0,0x3c013fdd)
eeObj.WriteMem32(0x0014dfc4,0x3421a523)

-- Widescreen Bug Fix
--c3080346 0000a5c7
eeObj.WriteMem32(0x0014fbe0,0x08030000)
eeObj.WriteMem32(0x000C0000,0x3C013F40)
eeObj.WriteMem32(0x000C0004,0x4481F000)
eeObj.WriteMem32(0x000C0008,0x461E2102)
eeObj.WriteMem32(0x000C000C,0x08053efa)
eeObj.WriteMem32(0x000C0010,0x460308C3)

-- Character Portraits Fix
--02a50146 240151c4
eeObj.WriteMem32(0x001bf818,0x0C030005)
eeObj.WriteMem32(0x000C0014,0x3C0145AA)
eeObj.WriteMem32(0x000C0018,0x4481F000)
eeObj.WriteMem32(0x000C001C,0x461EA502)
eeObj.WriteMem32(0x000C0020,0x03E00008)
end

emuObj.AddVsyncHook(widescreen)