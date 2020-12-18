apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crazy Taxi (PAL-M4) (SLES-50215)
--comment=Widescreen hack by ElHecht

-- 16:9 
eeObj.WriteMem32(0x0018812c,0x3c013f40)
eeObj.WriteMem32(0x0015e870,0x3c013f40)
eeObj.WriteMem32(0x0015e880,0x4481f000)
eeObj.WriteMem32(0x0015e884,0x46010d03)
eeObj.WriteMem32(0x0015e898,0x3210ffff)
eeObj.WriteMem32(0x0015e89c,0x2610ffff)
eeObj.WriteMem32(0x0015e8a0,0x0c066634)
eeObj.WriteMem32(0x0015e8a4,0x0200202d)
eeObj.WriteMem32(0x0015e8a8,0x4600a003)
eeObj.WriteMem32(0x0015e8ac,0x0200202d)
eeObj.WriteMem32(0x0015e8b0,0x0c06660e)
eeObj.WriteMem32(0x0015e8b4,0xe7809da8)
eeObj.WriteMem32(0x0015e8b8,0x461ea502)
end

emuObj.AddVsyncHook(widescreen)