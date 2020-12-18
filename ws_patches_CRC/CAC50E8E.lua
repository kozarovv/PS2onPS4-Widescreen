apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SBK-09 - Superbike World Championship (PAL-M5) (SLES-55492)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0013d448,0x4482e000)
eeObj.WriteMem32(0x0013d458,0x460ce002)
eeObj.WriteMem32(0x0013d45c,0x4483e800)
eeObj.WriteMem32(0x0013d468,0x4600eb02)
eeObj.WriteMem32(0x0013d46c,0x00000000)
eeObj.WriteMem32(0x0013d470,0x3c013f40)
eeObj.WriteMem32(0x0013d474,0x4481f000)
eeObj.WriteMem32(0x0013d478,0x461e0003)
eeObj.WriteMem32(0x0013d47c,0xe7a00048)
eeObj.WriteMem32(0x0013d484,0x4614e002)
eeObj.WriteMem32(0x0013d488,0x4600e846)
end

emuObj.AddVsyncHook(widescreen)