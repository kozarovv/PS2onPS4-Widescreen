apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Resident Evil: Outbreak: File #2 (SLES-53319)

--gameplay by ElHecht
eeObj.WriteMem32(0x003c8930,0x3fe38e38)

--FMV's fix by nemesis2000
eeObj.WriteMem32(0x003abbac,0x24060015)

eeObj.WriteMem32(0x003abd70,0x01264818)
eeObj.WriteMem32(0x003abd74,0x24061c00)
eeObj.WriteMem32(0x003abd7c,0x00c93022)
eeObj.WriteMem32(0x003abda0,0x00065043)
eeObj.WriteMem32(0x003abdd4,0x012a3020)
eeObj.WriteMem32(0x003abde0,0x0180602d)

eeObj.WriteMem32(0x001b32c4,0x00000000)
end

emuObj.AddVsyncHook(widescreen)