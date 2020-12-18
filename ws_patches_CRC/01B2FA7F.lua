apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen
--eeObj.WriteMem32(0x0026D1DC,0x3F400000)
eeObj.WriteMem32(0x002050ac,0x3F400000)

----commentcheat=No Letterbox V2 (By SolidSnake11)
eeObj.WriteMem32(0x0025E6A7,0x00100001)
eeObj.WriteMem32(0x0025E6A4,0x00000000)
eeObj.WriteMem32(0x00145990,0x8C8B000C)
eeObj.WriteMem32(0x001459C8,0x240F8000)
eeObj.WriteMem32(0x00131758,0x8E0E0004)
end

emuObj.AddVsyncHook(widescreen)