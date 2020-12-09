apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0036e0c4,0x3c013f40)
eeObj.WriteMem32(0x0036e0c8,0x44817000)
eeObj.WriteMem32(0x0036e0d8,0x460e7303)

eeObj.WriteMem32(0x00402868,0x3c013f40)
eeObj.WriteMem32(0x00402870,0x4481f000)
eeObj.WriteMem32(0x004028c0,0x4602f782)
eeObj.WriteMem32(0x004028d4,0x461e0842)

eeObj.WriteMem32(0x003627ac,0x3c013f2b)

eeObj.WriteMem32(0x0010a694,0x3c01c380)
eeObj.WriteMem32(0x0010a6c8,0x3c014380)
end

emuObj.AddVsyncHook(widescreen)