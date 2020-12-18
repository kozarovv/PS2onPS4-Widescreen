apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill 4 - The Room (K) (SLKA_25149)
--comment=Widescreen hack by ElHecht (NTSC-K by Arapapa)
--comment=FMV hack by Pelvicthrustman
--comment=Black borders fix by nemesis2000

-- 16:9
--00000000(*) 03050146 00000000 00000000(*)
eeObj.WriteMem32(0x00148564,0x3c013f40)
eeObj.WriteMem32(0x00148570,0x4481f000)

--47d60046 0424050c
eeObj.WriteMem32(0x001485a0,0x461ed683)

--00000000 32b00046
eeObj.WriteMem32(0x001485b4,0x4600d647)

--0800023c 7000a427, 08002226 08000326
eeObj.WriteMem32(0x002f79e4,0x3c020380)
eeObj.WriteMem32(0x002f7a28,0x34021880)

-- Inventory fix
eeObj.WriteMem32(0x00625F54,0x3F400000)
eeObj.WriteMem32(0x00626024,0x3F400000)
eeObj.WriteMem32(0x006260F4,0x3F400000)
eeObj.WriteMem32(0x006261C4,0x3F400000)
eeObj.WriteMem32(0x00626294,0x3F400000)
eeObj.WriteMem32(0x00626364,0x3F400000)
eeObj.WriteMem32(0x00626434,0x3F400000)
eeObj.WriteMem32(0x00626504,0x3F400000)
eeObj.WriteMem32(0x006265D4,0x3F400000)
eeObj.WriteMem32(0x006266A4,0x3F400000)

-- Item box fix
eeObj.WriteMem32(0x00624D54,0x3F400000)
eeObj.WriteMem32(0x00624E24,0x3F400000)
eeObj.WriteMem32(0x00624EF4,0x3F400000)
eeObj.WriteMem32(0x00624FC4,0x3F400000)
eeObj.WriteMem32(0x00625094,0x3F400000)
eeObj.WriteMem32(0x00625164,0x3F400000)
eeObj.WriteMem32(0x00625234,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)