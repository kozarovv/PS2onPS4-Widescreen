apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Garouden Breakblow (NTSC-J) (SLPS-25530)
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x0014f58c,0x080ad5cf)
eeObj.WriteMem32(0x0014f590,0x00000000)
eeObj.WriteMem32(0x002b573c,0x3c013f40)
eeObj.WriteMem32(0x002b5740,0x34210000)
eeObj.WriteMem32(0x002b5744,0x4481f000)
eeObj.WriteMem32(0x002b5748,0x461e6b42)
eeObj.WriteMem32(0x002b574c,0x46007bc7)
eeObj.WriteMem32(0x002b5750,0x46006b47)
eeObj.WriteMem32(0x002b5754,0x08053d64)
eeObj.WriteMem32(0x0010ad84,0x3c013f00)
eeObj.WriteMem32(0x0010ad88,0x342112d7)
eeObj.WriteMem32(0x00681194,0x3f400000)

-- 16:10
--eeObj.WriteMem32(0x0014f58c,0x080ad5cf)
--eeObj.WriteMem32(0x0014f590,0x00000000)
--eeObj.WriteMem32(0x002b573c,0x3c013f55)
--eeObj.WriteMem32(0x002b5740,0x34215555)
--eeObj.WriteMem32(0x002b5744,0x4481f000)
--eeObj.WriteMem32(0x002b5748,0x461e6b42)
--eeObj.WriteMem32(0x002b574c,0x46007bc7)
--eeObj.WriteMem32(0x002b5750,0x46006b47)
--eeObj.WriteMem32(0x002b5754,0x08053d64)
--eeObj.WriteMem32(0x0010ad84,0x3c013f0e)
--eeObj.WriteMem32(0x0010ad88,0x34214dd3)
--eeObj.WriteMem32(0x00681194,0x3f555555)
end

emuObj.AddVsyncHook(widescreen)