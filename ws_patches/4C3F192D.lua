apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00147618,0x08102677)
eeObj.WriteMem32(0x0014761c,0x00000000)
eeObj.WriteMem32(0x004099dc,0x3c013f40)
eeObj.WriteMem32(0x004099e0,0x4481f000)
eeObj.WriteMem32(0x004099e4,0x461e0002)
eeObj.WriteMem32(0x004099e8,0xe6000228)
eeObj.WriteMem32(0x004099ec,0x461e0842)
eeObj.WriteMem32(0x004099f0,0xe601022c)
eeObj.WriteMem32(0x004099f4,0x08051d87)

eeObj.WriteMem32(0x00281554,0x3c013edf)

eeObj.WriteMem32(0x001fc170,0x3c013f06)
eeObj.WriteMem32(0x001fc174,0x34216666)
end

emuObj.AddVsyncHook(widescreen)