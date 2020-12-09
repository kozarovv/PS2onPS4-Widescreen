apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x005b8cd0,0x3c013f40)
eeObj.WriteMem32(0x005b8cec,0x34210000)
eeObj.WriteMem32(0x005b8cf4,0x4481f000)
eeObj.WriteMem32(0x005b8cf8,0x461e1743)
eeObj.WriteMem32(0x005b8d08,0x461eb583)
eeObj.WriteMem32(0x005b8d0c,0x4600e8c6)

-- 16:10
--eeObj.WriteMem32(0x005b8cd0,0x3c013f55)
--eeObj.WriteMem32(0x005b8cec,0x34215555)
--eeObj.WriteMem32(0x005b8cf4,0x4481f000)
--eeObj.WriteMem32(0x005b8cf8,0x461e1743)
--eeObj.WriteMem32(0x005b8d08,0x461eb583)
--eeObj.WriteMem32(0x005b8d0c,0x4600e8c6)
end

emuObj.AddVsyncHook(widescreen)