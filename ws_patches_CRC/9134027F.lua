apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Garouden Break Blow (K)(SLKA-25371)
--comment=Widescreen hack by by ElHecht (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x0014f58c,0x080ad68f)
eeObj.WriteMem32(0x0014f590,0x00000000)

eeObj.WriteMem32(0x002b5a3c,0x3c013f40)
eeObj.WriteMem32(0x002b5a40,0x34210000)
eeObj.WriteMem32(0x002b5a44,0x4481f000)
eeObj.WriteMem32(0x002b5a48,0x461e6b42)
eeObj.WriteMem32(0x002b5a4c,0x46007bc7)
eeObj.WriteMem32(0x002b5a50,0x46006b47)
eeObj.WriteMem32(0x002b5a54,0x08053d64)

eeObj.WriteMem32(0x0010ad84,0x3c013f00)
eeObj.WriteMem32(0x0010ad88,0x342112d7)

eeObj.WriteMem32(0x00681494,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)