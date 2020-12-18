apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TMNT - Teenage Mutant Ninja Turtles (PAL-M5) (SLES-54478)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0041dde4,0x3c013f40)
eeObj.WriteMem32(0x0041dde8,0x4481f000)
eeObj.WriteMem32(0x0041de1c,0x461e0002)
eeObj.WriteMem32(0x0041ddf0,0x461eb583)
end

emuObj.AddVsyncHook(widescreen)