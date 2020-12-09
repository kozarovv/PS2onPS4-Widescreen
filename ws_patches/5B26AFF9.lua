apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

-- 16:9
eeObj.WriteMem32(0x00131ba8,0x080c92ea)
eeObj.WriteMem32(0x00131bac,0x00000000)

eeObj.WriteMem32(0x00324ba8,0x3c013f40)
eeObj.WriteMem32(0x00324bac,0x4481f000)
eeObj.WriteMem32(0x00324bb0,0x46000803)
eeObj.WriteMem32(0x00324bb4,0x461e0002)
eeObj.WriteMem32(0x00324bb8,0xe7808744)
eeObj.WriteMem32(0x00324bbc,0x0804c6eb)
end

emuObj.AddVsyncHook(widescreen)