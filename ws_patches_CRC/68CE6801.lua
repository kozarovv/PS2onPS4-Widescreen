apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--3D scenes
eeObj.WriteMem32(0x002bab2c,0x3c013f40)
eeObj.WriteMem32(0x002bab30,0x44810000)
eeObj.WriteMem32(0x002bab38,0x4600c602)

--battle fix
eeObj.WriteMem32(0x009dcb04,0x44400000)
eeObj.WriteMem32(0x009dcb0c,0xc4400000)

--2D scenes
eeObj.WriteMem32(0x001a95e0,0x3c014480)
eeObj.WriteMem32(0x001a95e8,0x44811800)
eeObj.WriteMem32(0x001a95ec,0x3c014a00)

eeObj.WriteMem32(0x001a95f0,0x44812000)
eeObj.WriteMem32(0x001a95f4,0xe7a40044)
eeObj.WriteMem32(0x001a95f8,0xe7a3004c)
eeObj.WriteMem32(0x001a95fc,0x3c01c480)

eeObj.WriteMem32(0x001a9600,0x44811000)
eeObj.WriteMem32(0x001a9604,0x3c0e009e)
eeObj.WriteMem32(0x001a9608,0x25ced9c4)
eeObj.WriteMem32(0x001a960c,0xe7a40040)

eeObj.WriteMem32(0x001a9610,0x46020882)
eeObj.WriteMem32(0x001a9614,0xc5c00000)
eeObj.WriteMem32(0x001a9618,0xe7a00048)
eeObj.WriteMem32(0x001a961c,0x46030842)

eeObj.WriteMem32(0x001a9620,0x46051082)
eeObj.WriteMem32(0x001a9624,0x46050842)
eeObj.WriteMem32(0x001a9628,0xe7a20038)
eeObj.WriteMem32(0x001a962c,0xe7a10024)

eeObj.WriteMem32(0x001a9630,0x3c013f40)
eeObj.WriteMem32(0x001a9634,0x44813000)
eeObj.WriteMem32(0x001a9638,0x46060842)
end

emuObj.AddVsyncHook(widescreen)