apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DragonBall Z - Budokai 3 (PAL-M5) (SLES-52730)
--comment=Widescreen hack by ElHecht

-- 16:9 gui and gameplay
eeObj.WriteMem32(0x001310c8,0x080c5137)
eeObj.WriteMem32(0x001310cc,0x00000000)

eeObj.WriteMem32(0x003144dc,0x3c013f40)
eeObj.WriteMem32(0x003144e0,0x4481f000)
eeObj.WriteMem32(0x003144e4,0x46000803)
eeObj.WriteMem32(0x003144e8,0x461e0002)
eeObj.WriteMem32(0x003144ec,0xe7808744)
eeObj.WriteMem32(0x003144f0,0x0804c433)
end

emuObj.AddVsyncHook(widescreen)