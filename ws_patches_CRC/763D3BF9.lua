apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x0035c670,0x0c045286)
eeObj.WriteMem32(0x0035c674,0x00000000)
eeObj.WriteMem32(0x0035c678,0x3c023f40)
eeObj.WriteMem32(0x0035c67c,0x0200202d)
eeObj.WriteMem32(0x0035c680,0x44820800)
eeObj.WriteMem32(0x0035c684,0x27a50028)
eeObj.WriteMem32(0x0035c688,0x46010083)
eeObj.WriteMem32(0x0035c68c,0xe7a20028)

--480p
eeObj.WriteMem32(0x002635fc,0x24050000)
eeObj.WriteMem32(0x00263600,0x24060050)
eeObj.WriteMem32(0x00262948,0x24060050)
eeObj.WriteMem32(0x0026294c,0x24050000)
eeObj.WriteMem32(0x00102254,0x3c090010)
end

emuObj.AddVsyncHook(widescreen)