apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gundam True Odyssey: Ushinawareta G no Densetsu [NTSC-J] (SLPS-25520)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x001b8b5c,0x46000003)
eeObj.WriteMem32(0x001b8b60,0x7fb00010)
eeObj.WriteMem32(0x001b8b64,0xffbf0000)
eeObj.WriteMem32(0x001b8b68,0x0080802d)
eeObj.WriteMem32(0x001b8b6c,0xc4a10004)
eeObj.WriteMem32(0x001b8b70,0xc4a30000)
eeObj.WriteMem32(0x001b8b74,0x3c013f40)
eeObj.WriteMem32(0x001b8b78,0x44811000)
eeObj.WriteMem32(0x001b8b7c,0x460218c3)
eeObj.WriteMem32(0x001b8b80,0xe601006c)
eeObj.WriteMem32(0x001b8b84,0xe6030068)
eeObj.WriteMem32(0x001b8b88,0xc6010068)
eeObj.WriteMem32(0x001b8b8c,0xc602006c)
eeObj.WriteMem32(0x001b8b90,0x46010043)
eeObj.WriteMem32(0x001b8b94,0x8e040004)
eeObj.WriteMem32(0x001b8b98,0x46020003)
eeObj.WriteMem32(0x001b8b9c,0x10800002)
eeObj.WriteMem32(0x001b8ba0,0xe6010070)
eeObj.WriteMem32(0x001b8ba4,0x0c06ea86)
eeObj.WriteMem32(0x001b8ba8,0xe6000074)
eeObj.WriteMem32(0x001b8bac,0x0200102d)
eeObj.WriteMem32(0x001b8bb0,0xdfbf0000)
eeObj.WriteMem32(0x001b8bb4,0x7bb00010)
eeObj.WriteMem32(0x001b8bb8,0x03e00008)
eeObj.WriteMem32(0x001b8bbc,0x27bd0020)
end

emuObj.AddVsyncHook(widescreen)