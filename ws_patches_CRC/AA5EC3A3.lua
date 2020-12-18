apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tales Of The Abyss (NTSC-J) (SLPS_25586)
--comment=Tales Of The Abyss (NTSC-J) (SLPS_25586) 16:9 Widescreen Hack & Progressive Scan
--comment= partial hud fix by sergx12
-- 16:9
eeObj.WriteMem32(0x0011afb8,0x3c023fe3)
eeObj.WriteMem32(0x0011ab18,0x34428e38)
eeObj.WriteMem32(0x001a267c,0x3c013f40)
-- Progressive Scan
eeObj.WriteMem32(0x001003bc,0x3c050000)
eeObj.WriteMem32(0x001003c4,0x3c060050)
eeObj.WriteMem32(0x001003cc,0x3c070001)

--partial hud fix
eeObj.WriteMem32(0x002bad08,0x3c023f40)
eeObj.WriteMem32(0x002bc6c4,0x3c023f40)

eeObj.WriteMem32(0x003a53bc,0x3C013F95)
eeObj.WriteMem32(0x00369238,0x3C034415)
eeObj.WriteMem32(0x003692a0,0x3C024400)
end

emuObj.AddVsyncHook(widescreen)