apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Teen Titans (PAL-E) (SLES-54431)
--comment=Widescreen hack by ElHecht, also works with NTSC-U

-- 16:9
eeObj.WriteMem32(0x00205784,0x080f1e0c)
eeObj.WriteMem32(0x00205788,0x00000000)
eeObj.WriteMem32(0x003c7830,0x3c013f40)
eeObj.WriteMem32(0x003c7834,0x4481f000)
eeObj.WriteMem32(0x003c7838,0x461ead43)
eeObj.WriteMem32(0x003c783c,0x4600ab06)
eeObj.WriteMem32(0x003c7840,0x0c072734)
eeObj.WriteMem32(0x003c7844,0x00000000)
eeObj.WriteMem32(0x003c7848,0x080815e2)

eeObj.WriteMem32(0x001c9d78,0x3c023fc0)
eeObj.WriteMem32(0x001c9da8,0x3c013f40)
eeObj.WriteMem32(0x001c9dac,0x4481f000)
eeObj.WriteMem32(0x001c9db4,0x461e0342)
end

emuObj.AddVsyncHook(widescreen)