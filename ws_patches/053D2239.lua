apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47
eeObj.WriteMem32(0x002050AC,0x3F400000)

----commentcheat=No Letterbox V2 (By SolidSnake11)
eeObj.WriteMem32(0x0025E6A7,0x00100001)
eeObj.WriteMem32(0x0025E6A4,0x00000000)
eeObj.WriteMem32(0x00145990,0x8C8B000C)
eeObj.WriteMem32(0x001459C8,0x240F8000)
eeObj.WriteMem32(0x00131758,0x8E0E0004)

----comment=Force 60 FPS
--eeObj.WriteMem32(0x001D5AD8,0x00000000)
--eeObj.WriteMem32(0x001D6DB8,0x00000001)
--eeObj.WriteMem32(0x001D6DBC,0x00000000)

----comment=Force 30 FPS
--eeObj.WriteMem32(0x001D5AD8,0x00000040)
--eeObj.WriteMem32(0x001D6DB8,0x00000002)
--eeObj.WriteMem32(0x001D6DBC,0x00000001)
end

emuObj.AddVsyncHook(widescreen)