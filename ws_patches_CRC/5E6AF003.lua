apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0020b00c,0x0818ac24)
eeObj.WriteMem32(0x0020b010,0x00000000)
eeObj.WriteMem32(0x0062b090,0x3c013f40)
eeObj.WriteMem32(0x0062b098,0x4481f000)
eeObj.WriteMem32(0x0062b09c,0x461e0783)
eeObj.WriteMem32(0x0062b0a0,0xe7be0038)
eeObj.WriteMem32(0x0062b0a4,0x46010003)
eeObj.WriteMem32(0x0062b0a8,0x08082c04)

-- 16:10
--eeObj.WriteMem32(0x0020b00c,0x0818ac24)
--eeObj.WriteMem32(0x0020b010,0x00000000)
--eeObj.WriteMem32(0x0062b090,0x3c013f55)
--eeObj.WriteMem32(0x0062b094,0x34215555)
--eeObj.WriteMem32(0x0062b098,0x4481f000)
--eeObj.WriteMem32(0x0062b09c,0x461e0783)
--eeObj.WriteMem32(0x0062b0a0,0xe7be0038)
--eeObj.WriteMem32(0x0062b0a4,0x46010003)
--eeObj.WriteMem32(0x0062b0a8,0x08082c04)
end

emuObj.AddVsyncHook(widescreen)