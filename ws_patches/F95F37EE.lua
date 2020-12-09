apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ar tonelico II: Melody of Metafalica (SLUS-21788P)
--comment=Widescreen patch by nemesis2000 (pnach by nemesis2000 )

--3D scenes
eeObj.WriteMem32(0x002bc554,0x3c013f40)
eeObj.WriteMem32(0x002bc558,0x44810000)
eeObj.WriteMem32(0x002bc560,0x4600c602)

--battle fix
eeObj.WriteMem32(0x00a008a4,0x44400000)
eeObj.WriteMem32(0x00a008ac,0xc4400000)

--2D scenes
eeObj.WriteMem32(0x001a9ffc,0x3c014480)
eeObj.WriteMem32(0x001aa004,0x44811800)
eeObj.WriteMem32(0x001aa008,0x3c014a00)
eeObj.WriteMem32(0x001aa00c,0x44812000)
eeObj.WriteMem32(0x001aa010,0xe7a40044)
eeObj.WriteMem32(0x001aa014,0xe7a3004c)
eeObj.WriteMem32(0x001aa018,0x3c01c480)
eeObj.WriteMem32(0x001aa01c,0x44811000)
eeObj.WriteMem32(0x001aa020,0x3c0e00a0)
eeObj.WriteMem32(0x001aa024,0x25ce148c)
eeObj.WriteMem32(0x001aa028,0xe7a40040)
eeObj.WriteMem32(0x001aa02c,0x46020882)
eeObj.WriteMem32(0x001aa030,0xc5c00000)
eeObj.WriteMem32(0x001aa034,0xe7a00048)
eeObj.WriteMem32(0x001aa038,0x46030842)
eeObj.WriteMem32(0x001aa03c,0x46051082)
eeObj.WriteMem32(0x001aa040,0x46050842)
eeObj.WriteMem32(0x001aa044,0xe7a20038)
eeObj.WriteMem32(0x001aa048,0xe7a10024)
eeObj.WriteMem32(0x001aa04c,0x3c013f40)
eeObj.WriteMem32(0x001aa050,0x44813000)
eeObj.WriteMem32(0x001aa054,0x46060842)
end

emuObj.AddVsyncHook(widescreen)