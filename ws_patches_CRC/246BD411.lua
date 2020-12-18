apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht

-- 16:9
eeObj.WriteMem32(0x00177334,0x080bead3)
eeObj.WriteMem32(0x00177338,0x00000000)
eeObj.WriteMem32(0x002fab4c,0x3c013f40)
eeObj.WriteMem32(0x002fab50,0x34210000)
eeObj.WriteMem32(0x002fab54,0x4481f000)
eeObj.WriteMem32(0x002fab58,0x461e6b42)
eeObj.WriteMem32(0x002fab5c,0x46007bc7)
eeObj.WriteMem32(0x002fab60,0x46006b47)
eeObj.WriteMem32(0x002fab64,0x0805dcce)
eeObj.WriteMem32(0x00114734,0x3c013f00)
eeObj.WriteMem32(0x00114738,0x342112d7)
eeObj.WriteMem32(0x006ead24,0x3f400000)

-- 16:10
--eeObj.WriteMem32(0x00177334,0x080bead3)
--eeObj.WriteMem32(0x00177338,0x00000000)
--eeObj.WriteMem32(0x002fab4c,0x3c013f55)
--eeObj.WriteMem32(0x002fab50,0x34215555)
--eeObj.WriteMem32(0x002fab54,0x4481f000)
--eeObj.WriteMem32(0x002fab58,0x461e6b42)
--eeObj.WriteMem32(0x002fab5c,0x46007bc7)
--eeObj.WriteMem32(0x002fab60,0x46006b47)
--eeObj.WriteMem32(0x002fab64,0x0805dcce)
--eeObj.WriteMem32(0x00114734,0x3c013f0e)
--eeObj.WriteMem32(0x00114738,0x34214dd3)
--eeObj.WriteMem32(0x006ead24,0x3f555555)
end

emuObj.AddVsyncHook(widescreen)