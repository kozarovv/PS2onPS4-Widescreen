apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ar tonelico II - Melody of Metafalica (E)(SLES-55444)
--comment=Widescreen hack by nemesis2000 (PAL by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x002bcec4,0x3c013f40)
eeObj.WriteMem32(0x002bcec8,0x44810000)
eeObj.WriteMem32(0x002bced0,0x4600c602)

eeObj.WriteMem32(0x00a018ac,0x44400000)
eeObj.WriteMem32(0x00a018b4,0xc4400000)

eeObj.WriteMem32(0x001aa910,0x3c014480)
eeObj.WriteMem32(0x001aa918,0x44811800)
eeObj.WriteMem32(0x001aa91c,0x3c014a00)
eeObj.WriteMem32(0x001aa920,0x44812000)
eeObj.WriteMem32(0x001aa924,0xe7a40044)
eeObj.WriteMem32(0x001aa928,0xe7a3004c)
eeObj.WriteMem32(0x001aa92c,0x3c01c480)
eeObj.WriteMem32(0x001aa930,0x44811000)
eeObj.WriteMem32(0x001aa934,0x3c0e00a0)
eeObj.WriteMem32(0x001aa938,0x25ce24ac)
eeObj.WriteMem32(0x001aa93c,0xe7a40040)
eeObj.WriteMem32(0x001aa940,0x46020882)
eeObj.WriteMem32(0x001aa944,0xc5c00000)
eeObj.WriteMem32(0x001aa948,0xe7a00048)
eeObj.WriteMem32(0x001aa94c,0x46030842)
eeObj.WriteMem32(0x001aa950,0x46051082)
eeObj.WriteMem32(0x001aa954,0x46050842)
eeObj.WriteMem32(0x001aa958,0xe7a20038)
eeObj.WriteMem32(0x001aa95c,0xe7a10024)
eeObj.WriteMem32(0x001aa960,0x3c013f40)
eeObj.WriteMem32(0x001aa964,0x44813000)
eeObj.WriteMem32(0x001aa968,0x46060842)
end

emuObj.AddVsyncHook(widescreen)