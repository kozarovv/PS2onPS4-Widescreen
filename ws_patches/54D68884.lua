apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00392a1c,0x08128980)
eeObj.WriteMem32(0x00392a20,0x00000000)
eeObj.WriteMem32(0x004a2600,0x3c013f40)
eeObj.WriteMem32(0x004a2604,0x4481f000)
eeObj.WriteMem32(0x004a2608,0x8e040004)
eeObj.WriteMem32(0x004a260c,0x46020003)
eeObj.WriteMem32(0x004a2610,0x461e0842)
eeObj.WriteMem32(0x004a2614,0x080e4a88)

eeObj.WriteMem32(0x0010579c,0x3c014300)

eeObj.WriteMem32(0x002fce20,0x3c013f2e)
eeObj.WriteMem32(0x002fce24,0x4481f000)
eeObj.WriteMem32(0x002ff9e4,0x461ea503)

eeObj.WriteMem32(0x003032fc,0x3c0141f0)
end

emuObj.AddVsyncHook(widescreen)