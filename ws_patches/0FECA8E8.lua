apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001b2200,0x3c013f40)
eeObj.WriteMem32(0x001b2204,0x0c108f50)
eeObj.WriteMem32(0x001b2208,0x4481f000)
eeObj.WriteMem32(0x001b220c,0xc60100c8)
eeObj.WriteMem32(0x001b2210,0x46000802)
eeObj.WriteMem32(0x001b2214,0x461e0783)
eeObj.WriteMem32(0x001b2218,0xe61e00c0)
eeObj.WriteMem32(0x004FD080,0x3f400000)
eeObj.WriteMem32(0x004F4ED0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)