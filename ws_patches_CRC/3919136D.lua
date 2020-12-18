apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack

-- 16:9
eeObj.WriteMem32(0x00148564,0x3c013f40)
eeObj.WriteMem32(0x00148570,0x4481f000)
eeObj.WriteMem32(0x001485a0,0x461ed683)
eeObj.WriteMem32(0x001485b4,0x4600d647)

-- FMV fix
eeObj.WriteMem32(0x002f7954,0x3c020380)
eeObj.WriteMem32(0x002f7998,0x34021880)

-- Black borders fix
eeObj.WriteMem32(0x001A9540,0x24030000)

-- Inventory fix
eeObj.WriteMem32(0x00625D54,0x3F400000)
eeObj.WriteMem32(0x00625E24,0x3F400000)
eeObj.WriteMem32(0x00625EF4,0x3F400000)
eeObj.WriteMem32(0x00625FC4,0x3F400000)
eeObj.WriteMem32(0x00626094,0x3F400000)
eeObj.WriteMem32(0x00626164,0x3F400000)
eeObj.WriteMem32(0x00626234,0x3F400000)
eeObj.WriteMem32(0x00626304,0x3F400000)
eeObj.WriteMem32(0x006263D4,0x3F400000)
eeObj.WriteMem32(0x006264A4,0x3F400000)

-- Item box fix
eeObj.WriteMem32(0x00624B54,0x3F400000)
eeObj.WriteMem32(0x00624C24,0x3F400000)
eeObj.WriteMem32(0x00624CF4,0x3F400000)
eeObj.WriteMem32(0x00624DC4,0x3F400000)
eeObj.WriteMem32(0x00624E94,0x3F400000)
eeObj.WriteMem32(0x00624F64,0x3F400000)
eeObj.WriteMem32(0x00625034,0x3F400000)

-- Hide licensing
eeObj.WriteMem32(0x0048F0E4,0x00000000)

--zoom = 2045A1B4
end

emuObj.AddVsyncHook(widescreen)