apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Naruto - Ultimate Ninja (PAL-M5) (SLES-54163)
--comment=Widescreen Hack by ElHecht & Arapapa

eeObj.WriteMem32(0x00081100,0x00100128)
eeObj.WriteMem32(0x00844FB0,0x3f400000)
eeObj.WriteMem32(0x00263e64,0x3c023f40)
eeObj.WriteMem32(0x00263eb4,0x3c023f40)
eeObj.WriteMem32(0x00263ffc,0x3c023f40)
eeObj.WriteMem32(0x00264144,0x3c023f40)
eeObj.WriteMem32(0x00265720,0x3c023f40)
eeObj.WriteMem32(0x0026576c,0x3c023f40)
eeObj.WriteMem32(0x002658ac,0x3c023f40)

eeObj.WriteMem32(0x00080d00,0x00100128)
eeObj.WriteMem32(0x00844BB0,0x3f400000)
eeObj.WriteMem32(0x00263e64,0x3c023f40)
eeObj.WriteMem32(0x00263eb4,0x3c023f40)
eeObj.WriteMem32(0x00263ffc,0x3c023f40)
eeObj.WriteMem32(0x00264144,0x3c023f40)
eeObj.WriteMem32(0x00265720,0x3c023f40)
eeObj.WriteMem32(0x0026576c,0x3c023f40)
eeObj.WriteMem32(0x002658ac,0x3c023f40)

eeObj.WriteMem32(0x00082380,0x00100128)
eeObj.WriteMem32(0x00846230,0x3f400000)
eeObj.WriteMem32(0x00263e64,0x3c023f40)
eeObj.WriteMem32(0x00263eb4,0x3c023f40)
eeObj.WriteMem32(0x00263ffc,0x3c023f40)
eeObj.WriteMem32(0x00264144,0x3c023f40)
eeObj.WriteMem32(0x00265720,0x3c023f40)
eeObj.WriteMem32(0x0026576c,0x3c023f40)
eeObj.WriteMem32(0x002658ac,0x3c023f40)

eeObj.WriteMem32(0x0008f980,0x00100128)
eeObj.WriteMem32(0x00843830,0x3f400000)
eeObj.WriteMem32(0x00263e64,0x3c023f40)
eeObj.WriteMem32(0x00263eb4,0x3c023f40)
eeObj.WriteMem32(0x00263ffc,0x3c023f40)
eeObj.WriteMem32(0x00264144,0x3c023f40)
eeObj.WriteMem32(0x00265720,0x3c023f40)
eeObj.WriteMem32(0x0026576c,0x3c023f40)
eeObj.WriteMem32(0x002658ac,0x3c023f40)

eeObj.WriteMem32(0x00080680,0x00100128)
eeObj.WriteMem32(0x00844530,0x3f400000)
eeObj.WriteMem32(0x00263e64,0x3c023f40)
eeObj.WriteMem32(0x00263eb4,0x3c023f40)
eeObj.WriteMem32(0x00263ffc,0x3c023f40)
eeObj.WriteMem32(0x00264144,0x3c023f40)
eeObj.WriteMem32(0x00265720,0x3c023f40)
eeObj.WriteMem32(0x0026576c,0x3c023f40)
eeObj.WriteMem32(0x002658ac,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)